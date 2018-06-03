Red/System [
	Title:   "Red execution stack functions"
	Author:  "Nenad Rakocevic"
	File: 	 %stack.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

stack: context [										;-- call stack
	verbose: 0

	arg-stk:		declare red-block!					;-- argument stack (should never be relocated)
	call-stk:		declare red-block!					;-- call stack (should never be relocated)
	args-series:	declare series!
	calls-series:	declare series!
	a-end: 			declare red-value!
	c-end: 			declare int-ptr!
	arguments:		declare red-value!	;--参数的起始地址
	bottom:  		declare red-value!	;--参数栈底
	top:	 		declare red-value!	;--参数栈顶
	cbottom: 		declare int-ptr!	;--调用栈底
	ctop:	 		declare int-ptr!	;--调用栈顶

	#define MARK_STACK(type) [
		func [
			fun [red-word!]
		][
			#if debug? = yes [if verbose > 0 [print-line "stack/mark"]]

			if ctop = c-end [
				print-line ["^/*** Error: call stack overflow!^/"]
				halt
			]

			print-line [lf lf "... MARK_STACK ..."]
			?? type
			print-line ["fun: " as-integer fun]
			print-line ["fun/symbol: " fun/symbol]	;-- 92

			ctop/1: type or (fun/symbol << 8)	;-- '0x40005c00'
			ctop/2: as-integer arguments

			print-line ["arguments: " as-integer arguments]
			print-line ["top: " as-integer top]
			print-line ["ctop: " as-integer ctop]
			print-line ["ctop/value: " ctop/value]
			print-line ["ctop/1: " ctop/1]
			print-line ["ctop/2: " ctop/2]

			arguments: top								;-- top of stack becomes frame base
			ctop: ctop + 2	;-- ctop 是 int-ptr!，一个 4 字节

			print-line [lf "arguments: " as-integer arguments]
			print-line ["top: " as-integer top]
			print-line ["ctop: " as-integer ctop]
			print-line ["ctop/value: " ctop/value]
			print-line ["ctop/1: " ctop/1]
			print-line ["ctop/2: " ctop/2]
			halt

			#if debug? = yes [if verbose > 1 [dump]]
		]
	]

	;-- header flags
	#enum flags! [
		FLAG_FUNCTION:	80000000h						;-- function! call
		FLAG_NATIVE:	40000000h						;-- native! or action! call
		FLAG_ROUTINE:	20000000h						;--	<reserved>
		FLAG_TRY:		10000000h						;--	TRY native
		FLAG_CATCH:		08000000h						;-- CATCH native
		FLAG_THROW_ATR:	04000000h						;-- Throw function attribut
		FLAG_CATCH_ATR:	02000000h						;--	Catch function attribut
	]

	init: does [
		arg-stk:  block/make-in root 1024
		call-stk: block/make-in root 512

		set-flag arg-stk/node flag-series-fixed or flag-series-nogc
		set-flag call-stk/node flag-series-fixed or flag-series-nogc

		;-- Shortcuts for stack buffers simpler and faster access
		;-- (stack buffers are not resizable with such approach
		;-- this can be made more flexible (but slower) if necessary
		;-- in the future)

		args-series:  GET_BUFFER(arg-stk)
		calls-series: GET_BUFFER(call-stk)

		a-end: as cell!    (as byte-ptr! args-series)  + args-series/size
		c-end: as int-ptr! (as byte-ptr! calls-series) + calls-series/size

		arguments:	args-series/tail
		bottom:  	args-series/offset
		top:	 	args-series/tail
		cbottom: 	as int-ptr! calls-series/offset
		ctop:	 	as int-ptr! calls-series/tail

		print-line [lf "... stack ..."]
		print-line ["args-series: " as-integer args-series]
		print-line ["calls-series: " as-integer calls-series]
		print-line ["arguments: " as-integer arguments]
		print-line ["bottom: " as-integer bottom]
		print-line ["top: " as-integer top]
		print-line ["cbottom: " as-integer cbottom]
		print-line ["ctop: " as-integer ctop]
	]

	reset: func [
		return:  [cell!]
		/local
			s	 [series!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/reset"]]

		top: arguments									;-- overwrite last value
		arguments
	]

	keep: func [
		return:  [cell!]
		/local
			s	 [series!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/keep"]]

        ;-- keep 的意思是说保留栈中的 arguments 指针，
        ;-- top 指针的所有参数已经被消费完了，要回退到 arguments + 1 即下一位
		top: arguments + 1		;-- keep last value in arguments slot
		arguments
	]

    ;-- MARK-STACK 宏简单来说是把 arguments: top
	mark-native: MARK_STACK(FLAG_NATIVE)
	mark-func:	 MARK_STACK(FLAG_FUNCTION)
	mark-try:	 MARK_STACK(FLAG_TRY)
	mark-catch:	 MARK_STACK(FLAG_CATCH)

	unwind: does [
		#if debug? = yes [if verbose > 0 [print-line "stack/unwind"]]
		assert cbottom < ctop
		ctop: ctop - 2 ;-- mark-xxx 是 ctop + 2，unwind 是 ctop - 2，相抵消，这个 ctop 和 call-stk 似乎并没用处
		;-- 因此 ctop 总是等于 cbottom
		either ctop = cbottom [
			;-- 调用栈到底了，说明本次调用全完成了
			arguments: bottom
			top: bottom
		][
			;-- 调用栈还没跑完，保存了上一次调用的值，参数移到下一个
			top: arguments + 1				;-- keep last value on stack
			arguments: as red-value! ctop/2	;-- 参数多移两位
		]

		#if debug? = yes [if verbose > 1 [dump]]
	]

	unwind-last: func [
		return:  [red-value!]
		/local
			last [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/unwind-last"]]

		last: arguments
		unwind
		copy-cell last arguments
	]

	unroll: func [
		flags	 [integer!]
		/local
			last [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/unroll"]]

		last: arguments
		assert cbottom < ctop
		until [
			ctop: ctop - 2
			any [
				flags and ctop/1 = flags
				ctop <= cbottom
			]
		]
		ctop: ctop + 2									;-- ctop points past the current call frame
		copy-cell last as red-value! ctop/2
	]

	set-last: func [
		last	[red-value!]
		return: [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/set-last"]]

		copy-cell last arguments ;-- 把运算结果写回
	]

	push*: func [
		return:  [red-value!]
		/local
			cell [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/push*"]]
		;-- 返回栈顶 cell，top +1
		cell: top
		top: top + 1
		if top >= a-end [
			print-line ["^/*** Error: arguments stack overflow!^/"]
			halt
		]
		cell
	]

	push: func [
		value 	  [red-value!]
		return:   [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/push"]]
		;-- 把给定的值复制到栈顶，top +1
		copy-cell value top
		push*
	]

	pop: func [
		positions [integer!]
	][
		#if debug? = yes [if verbose > 0 [print-line "stack/pop"]]
		;-- top 减 N
		top: top - positions
	]

	top-type?: func [
		return:  [integer!]
		/local
			cell [red-value!]
	][
		cell: top - 1
		TYPE_OF(cell)
	]

	#if debug? = yes [
		dump: does [									;-- debug purpose only
			print-line "^/---- Argument stack ----"
			dump-memory
				as byte-ptr! bottom
				4
				(as-integer top + 1 - bottom) >> 4
			print-line ["arguments: " arguments]
			print-line ["top: " top]

			print-line "^/---- Call stack ----"
			dump-memory
				as byte-ptr! cbottom
				4
				(as-integer ctop + 4 - cbottom) >> 4
			print-line ["ctop: " ctop]
		]
	]
]
