Red/System [
	Title:   "Context! datatype runtime functions"
	Author:  "Nenad Rakocevic"
	File: 	 %context.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

_context: context [
	verbose: 0

	find-word: func [
		ctx		[red-context!]
		sym		[integer!]
		return:	[integer!]								;-- value > 0: success, value = -1: failure
		/local
			series	[series!]
			list	[red-word!]
			end		[red-word!]
	][
		series: as series! ctx/symbols/value
		list:   as red-word! series/offset
		end:    as red-word! series/tail
		sym:	symbol/resolve sym

		print-line ["007 context/find-word series: " as-integer series ", list: " as-integer list ", end: " as-integer end ", sym: " sym]

		while [list < end][
			if list/symbol = sym [
				return (as-integer list - as red-word! series/offset) >> 4	;@@ log2(size? cell!) hardcoded
			]
			list: list + 1
		]
		-1												;-- search failed
	]

	add-global: func [
		symbol	[integer!]
		return: [red-word!]
		/local
			word  [red-word!]
			value [cell!]
			s  	  [series!]
			id	  [integer!]
	][
		#if debug? = yes [if verbose > 0 [print-line "_context/add-global"]]

		print-line ["006 context/add-global symbol: " symbol]

		id: find-word global-ctx symbol
		s: as series! global-ctx/symbols/value

		print-line ["006 context/add-global id: " id ", s: " as-integer s]

		if id <> -1 [return as red-word! s/offset + id]	;-- word already defined in global context

		s: as series! global-ctx/symbols/value
		word: as red-word! alloc-tail s ;-- series-buffer! 结构中的 tail 会后移一位

		word/header: TYPE_WORD							;-- implicit reset of all header flags
		word/ctx: 	 global-ctx
		word/symbol: symbol	;-- 只是当前 word 对应的 symbol 在 symbols 全局变量中的偏移量，即下标

		;-- 右移 4 位相当于除以 16，因为 cell! 包含 4 个指针， 4 * 4 bytes = 16 bytes，见 alloc-cells
		word/index:  (as-integer s/tail - s/offset) >> 4 - 1 ;-- 在 ctx 中的下标

        ;-- 从 global-ctx/values 中分配一个 cell!，类型设置为未知 TYPE_UNSET 来占位，
        ;-- 这个 cell！以后会用 set-integer 和 set 函数来设定这个 word! 在该 context! 下的值
		value: alloc-tail as series! global-ctx/values/value ;-- series-buffer! 结构中的 tail 会后移一位
		value/header: TYPE_UNSET
		word
	]

	add: func [
		ctx		[red-context!]
		word 	[red-word!]
		return:	[integer!]
		/local
			sym	  [cell!]
			value [cell!]
			s  	  [series!]
			id	  [integer!]
	][
		#if debug? = yes [if verbose > 0 [print-line "_context/add"]]

		id: find-word ctx word/symbol
		if id <> -1 [return id]

		s: as series! ctx/symbols/value
		sym: alloc-tail s
		copy-cell as cell! word sym

		unless ON_STACK?(ctx) [
			value: alloc-tail as series! ctx/values/value
			value/header: TYPE_UNSET
		]

		(as-integer s/tail - s/offset) >> 4 - 1
	]

	set-integer: func [
		word 	[red-word!]
		value	[integer!]
		return:	[integer!]
		/local
			int 	[red-integer!]
			values	[series!]
			ctx		[red-context!]
	][
		#if debug? = yes [if verbose > 0 [print-line "_context/set-integer"]]

		ctx: word/ctx

		if word/index = -1 [
			word/index: find-word ctx word/symbol
		]
		int: as red-integer! either ON_STACK?(ctx) [
			(as red-value! ctx/values) + word/index
		][
			values: as series! word/ctx/values/value
			values/offset + word/index
		]
		int/header: TYPE_INTEGER
		int/value: value
		value
	]

	set: func [
		word 		[red-word!]
		value		[red-value!]
		return:		[red-value!]
		/local
			values	[series!]
			ctx		[red-context!]
	][
		#if debug? = yes [if verbose > 0 [print-line "_context/set"]]

		ctx: word/ctx

		if word/index = -1 [
			word/index: find-word ctx word/symbol
			if word/index = -1 [add ctx word]
		]
		either ON_STACK?(ctx) [
			copy-cell value (as red-value! ctx/values) + word/index
		][
			values: as series! ctx/values/value
			copy-cell value values/offset + word/index
		]
	]

	get: func [
		word	   [red-word!]
		return:	   [red-value!]
		/local
			values [series!]
			sym	   [red-symbol!]
			ctx	   [red-context!]
	][
		#if debug? = yes [if verbose > 0 [print-line "_context/get"]]

		ctx: word/ctx

		if any [			;-- ensure word is properly bound to a context
			null? ctx
			word/index = -1
		][
			sym: symbol/get word/symbol
			print-line ["*** Error: word '" sym/cache " has no value"]
			halt
		]
		if null? ctx/values [
			sym: symbol/get word/symbol
			print-line ["*** Error: undefined context for word '" sym/cache]
			halt
		]
		either ON_STACK?(ctx) [
			(as red-value! ctx/values) + word/index
		][
			values: as series! ctx/values/value
			values/offset + word/index
		]
	]

	create: func [
		blk			[red-block!]				;-- storage place (at tail of block)
		slots		[integer!]					;-- max number of words in the context
		stack?		[logic!]					;-- TRUE: alloc values on stack, FALSE: alloc them from heap
		return:		[red-context!]
		/local
			cell 	[red-context!]
	][
		#if debug? = yes [if verbose > 0 [print-line "_context/create"]]

		if zero? slots [slots: 1]
		cell: as red-context! ALLOC_TAIL(blk)	;-- 返回 root buf 下的一个 cell!，强转成 red-context!，两者都是 4 个成员，兼容的
		cell/header: TYPE_CONTEXT				;-- implicit reset of all header flags
		cell/symbols: alloc-series slots 16 0	;-- force offset at head of buffer

		either stack? [
			;-- 如果是在栈内分配，设置一个标志位，方便后续的 STACK?(ctx) 宏的使用
			cell/header: TYPE_CONTEXT or flag-series-stk
			;-- 如果是栈，不需要给 values 分配空间，因为所有 values 都由 stack 来提供
			;-- 具体而言，是调用函数是传入的参数、本地参数
			cell/values: null					;-- will be set to stack frame dynamically
		][
			cell/values: alloc-cells slots
		]
		cell
	]

	make: func [
		spec	[red-block!]
		stack?	[logic!]
		return:	[red-context!]
		/local
			ctx	 [red-context!]
			cell [red-value!]
			slot [red-word!]
			s	 [series!]
			type [integer!]
			i	 [integer!]
	][
		ctx: create root block/rs-length? spec stack?
		s: GET_BUFFER(spec)
		cell: s/offset
		i: 0

		while [cell < s/tail][
			type: TYPE_OF(cell)
			if any [									;TBD: use typeset/any-word?
				type = TYPE_WORD
				type = TYPE_GET_WORD
				type = TYPE_LIT_WORD
				type = TYPE_REFINEMENT
			][											;-- add new word to context
				slot: as red-word! alloc-tail as series! ctx/symbols/value
				copy-cell cell as red-value! slot
				slot/header: TYPE_WORD
				slot/ctx: ctx
				slot/index: i
				i: i + 1
			]
			cell: cell + 1
		]
		ctx
	]

	get-words: func [
		/local
			blk	[red-block!]
	][
		blk: as red-block! stack/push*
		blk/header: TYPE_BLOCK
		blk/head: 	0
		blk/node: 	global-ctx/symbols

        ;-- 会返回 red-value! 结构
		copy-cell 										;-- reposition cloned block at right place
			as red-value! block/clone blk no
			as red-value! blk
	]

	bind: func [
		body	[red-block!]
		ctx		[red-context!]
		return: [red-block!]
		/local
			value [red-value!]
			end	  [red-value!]
			w	  [red-word!]
			idx	  [integer!]
			type  [integer!]
	][
		value: block/rs-head body
		end:   block/rs-tail body

		while [value < end][
			switch TYPE_OF(value) [
				TYPE_WORD
				TYPE_GET_WORD
				TYPE_SET_WORD
				TYPE_LIT_WORD
				TYPE_REFINEMENT [
					w: as red-word! value
					idx: _context/find-word ctx w/symbol
					if idx >= 0 [
						w/ctx:   ctx
						w/index: idx
					]
				]
				TYPE_BLOCK 					;@@ replace with TYPE_ANY_BLOCK
				TYPE_PAREN
				TYPE_PATH
				TYPE_LIT_PATH
				TYPE_SET_PATH
				TYPE_GET_PATH	[
					bind as red-block! value ctx
				]
				default [0]
			]
			value: value + 1
		]
		body
	]

	;-- Actions --

	init: does [
		datatype/register [
			TYPE_CONTEXT
			TYPE_VALUE
			"context!"
			;-- General actions --
			null			;make
			null			;random
			null			;reflect
			null			;to
			null			;form
			null			;mold
			null			;get-path
			null			;set-path
			null			;compare
			;-- Scalar actions --
			null			;absolute
			null			;add
			null			;divide
			null			;multiply
			null			;negate
			null			;power
			null			;remainder
			null			;round
			null			;subtract
			null			;even?
			null			;odd?
			;-- Bitwise actions --
			null			;and~
			null			;complement
			null			;or~
			null			;xor~
			;-- Series actions --
			null			;append
			null			;at
			null			;back
			null			;change
			null			;clear
			null			;copy
			null			;find
			null			;head
			null			;head?
			null			;index?
			null			;insert
			null			;length?
			null			;next
			null			;pick
			null			;poke
			null			;remove
			null			;reverse
			null			;select
			null			;sort
			null			;skip
			null			;swap
			null			;tail
			null			;tail?
			null			;take
			null			;trim
			;-- I/O actions --
			null			;create
			null			;close
			null			;delete
			null			;modify
			null			;open
			null			;open?
			null			;query
			null			;read
			null			;rename
			null			;update
			null			;write
		]
	]
]
