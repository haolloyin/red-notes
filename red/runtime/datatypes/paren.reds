Red/System [
	Title:   "Paren! datatype runtime functions"
	Author:  "Nenad Rakocevic"
	File: 	 %paren.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

paren: context [
	verbose: 0
	
	push*: func [
		size	  [integer!]
		return:   [red-paren!]	
		/local
			paren [red-paren!]
	][
		#if debug? = yes [if verbose > 0 [print-line "paren/push*"]]
		
		paren: as red-block! ALLOC_TAIL(root)
		paren/header: TYPE_PAREN					;-- implicit reset of all header flags
		paren/head:   0
		paren/node:   alloc-cells size
		push paren
		paren
	]
	
	push: func [
		paren [red-paren!]
	][
		#if debug? = yes [if verbose > 0 [print-line "paren/push"]]

		paren/header: TYPE_PAREN					;-- implicit reset of all header flags 
		copy-cell as red-value! paren stack/push*
	]

	;--- Actions ---
	
	make: func [
		proto 	  [red-value!]
		spec	  [red-value!]
		return:	  [red-paren!]
		/local
			paren [red-paren!]
	][
		#if debug? = yes [if verbose > 0 [print-line "paren/make"]]

		paren: as red-paren! block/make proto spec
		paren/header: TYPE_PAREN						;-- implicit reset of all header flags
		paren
	]
	
	mold: func [
		paren	  [red-paren!]
		buffer	  [red-string!]
		only?	  [logic!]
		all?	  [logic!]
		flat?	  [logic!]
		arg		  [red-value!]
		part 	  [integer!]
		return:   [integer!]
	][
		#if debug? = yes [if verbose > 0 [print-line "paren/mold"]]
		
		string/append-char GET_BUFFER(buffer) as-integer #"("
		part: part - 1
		part: block/mold-each paren buffer only? all? flat? arg part
		string/append-char GET_BUFFER(buffer) as-integer #")"
		part - 1
	]
	
	compare: func [
		value1	   [red-paren!]							;-- first operand
		value2	   [red-paren!]							;-- second operand
		op		   [integer!]							;-- type of comparison
		return:	   [logic!]
	][
		#if debug? = yes [if verbose > 0 [print-line "paren/compare"]]

		if TYPE_OF(value2) <> TYPE_PAREN [RETURN_COMPARE_OTHER]
		block/compare-each as red-block! value1 as red-block! value2 op
	]

	init: does [
		datatype/register [
			TYPE_PAREN
			TYPE_BLOCK
			"paren!"
			;-- General actions --
			:make
			null			;random
			null			;reflect
			null			;to
			INHERIT_ACTION	;form
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
			INHERIT_ACTION	;at
			INHERIT_ACTION	;back
			null			;change
			INHERIT_ACTION	;clear
			INHERIT_ACTION	;copy
			INHERIT_ACTION	;find
			INHERIT_ACTION	;head
			INHERIT_ACTION	;head?
			INHERIT_ACTION	;index?
			INHERIT_ACTION	;insert
			INHERIT_ACTION	;length?
			INHERIT_ACTION	;next
			INHERIT_ACTION	;pick
			INHERIT_ACTION	;poke
			INHERIT_ACTION	;remove
			null			;reverse
			INHERIT_ACTION	;select
			null			;sort
			INHERIT_ACTION	;skip
			null			;swap
			INHERIT_ACTION	;tail
			INHERIT_ACTION	;tail?
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