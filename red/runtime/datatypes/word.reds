Red/System [
	Title:   "Word! datatype runtime functions"
	Author:  "Nenad Rakocevic"
	File: 	 %word.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

#define CHECK_UNSET(value) [
	if TYPE_OF(value) = TYPE_UNSET [
		print-line "*** Error: word has no value!"
	]
]

word: context [
	verbose: 0

	load-in: func [
		str 	[c-string!]
		blk		[red-block!]
		return:	[red-word!]
		/local
			id    [integer!]							;-- symbol ID
			cell  [red-word!]
	][
		id: symbol/make str

		cell: as red-word! ALLOC_TAIL(blk)
		cell/header: TYPE_WORD							;-- implicit reset of all header flags
		cell/ctx: 	 global-ctx
		cell/symbol: id
		cell/index:  _context/add global-ctx cell
		cell
	]

	load: func [
		str 	[c-string!]
		return:	[red-word!]
	][
		print-line [lf "002 word/load str: " str]
		symbol-index: symbol/make str

		print-line ["005 word/load symbol-index: " symbol-index]

		_context/add-global symbol-index

		;;_context/add-global symbol/make str
	]

	push: func [
		word	 [red-word!]
		return:  [red-word!]
		/local
			cell [red-word!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/push"]]

		cell: as red-word! stack/push*
		copy-cell as cell! word as cell! cell
		cell
	]

	push-local: func [
		ctx		[red-context!]
		index	[integer!]
		return: [red-word!]
		/local
			s	[series!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/push-local"]]

		s: as series! ctx/symbols/value
		push as red-word! s/offset + index
	]

	get-buffer: func [
		w		[red-word!]
		return: [red-symbol!]
	][
		symbol/get w/symbol
	]

	set: func [
		/local
			value [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/set"]]

		value: stack/arguments + 1	;-- arg 第一个是 word，值是下一个，所以+1
		CHECK_UNSET(value)
		_context/set as red-word! stack/arguments value
		stack/set-last value
	]

	set-local: func [
		slot	 [red-value!]
		return:  [red-value!]
		/local
			value [red-value!]
	][
		value: stack/arguments
		CHECK_UNSET(value)
		copy-cell value slot
	]

	get-any: func [
		word	 [red-word!]
		return:  [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/get-any"]]

		copy-cell _context/get word stack/push*
	]

	get: func [
		word	 [red-word!]
		return:  [red-value!]
		/local
			value [red-value!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/get"]]

		value: copy-cell _context/get word stack/push*
		CHECK_UNSET(value)
		if TYPE_OF(value) = TYPE_LIT_WORD [
			value/header: TYPE_WORD						;-- cast lit-word! to word!
		]
		value
	]

	;-- Actions --

	form: func [
		w		[red-word!]
		buffer	[red-string!]
		arg		[red-value!]
		part 	[integer!]
		return: [integer!]
		/local
			s	[series!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/form"]]

		s: GET_BUFFER(symbols)

		string/form
			as red-string! s/offset + w/symbol - 1		;-- symbol! and string! structs are overlapping
			buffer
			arg
			part
	]

	mold: func [
		w		[red-word!]
		buffer	[red-string!]
		only?	[logic!]
		all?	[logic!]
		flat?	[logic!]
		arg		[red-value!]
		part 	[integer!]
		return: [integer!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/mold"]]

		form w buffer arg part
	]

	compare: func [
		arg1	 [red-word!]							;-- first operand
		arg2	 [red-word!]							;-- second operand
		op		 [integer!]								;-- type of comparison
		return:	 [logic!]
		/local
			type [integer!]
			res	 [logic!]
	][
		#if debug? = yes [if verbose > 0 [print-line "word/compare"]]

		type: TYPE_OF(arg2)
		switch op [
			COMP_EQUAL [
				res: all [
					any [								;@@ replace by ANY_WORD? when available
						type = TYPE_WORD
						type = TYPE_GET_WORD
						type = TYPE_SET_WORD
						type = TYPE_LIT_WORD
						type = TYPE_REFINEMENT
						type = TYPE_ISSUE
					]
					EQUAL_WORDS?(arg1 arg2)
				]
			]
			COMP_STRICT_EQUAL [
				res: all [
					type = TYPE_WORD
					arg1/symbol = arg2/symbol
				]
			]
			COMP_NOT_EQUAL [
				res: not compare arg1 arg2 COMP_EQUAL
			]
			default [
				print-line ["Error: cannot use: " op " comparison on any-word! value"]
			]
		]
		res
	]

	init: does [
		datatype/register [
			TYPE_WORD
			TYPE_SYMBOL
			"word!"
			;-- General actions --
			null			;make
			null			;random
			null			;reflect
			null			;to
			:form
			:mold
			null			;get-path
			null			;set-path
			:compare
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
