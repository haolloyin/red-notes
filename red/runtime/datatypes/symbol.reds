Red/System [
	Title:   "Symbol! datatype runtime functions"
	Author:  "Nenad Rakocevic"
	File: 	 %symbol.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

symbol: context [
	verbose: 0

	same?: func [										;-- case-insensitive UTF-8 string comparison
		str1	     [c-string!]
		str2	     [c-string!]
		return:      [integer!]
		/local
			aliased? [logic!]
			c1	     [byte!]
			c2	     [byte!]
	][
		aliased?: no
		c1:   str1/1
		c2:   str2/1

		while [c1 <> null-byte][
			aliased?: either c1 = c2 [
				no
			][
				if all [#"A" <= c1 c1 <= #"Z"][c1: c1 + 32]	;-- lowercase c1
				if all [#"A" <= c2 c2 <= #"Z"][c2: c2 + 32] ;-- lowercase c2
				if c1 <> c2 [return 0]					;-- not same case-insensitive character
				yes
			]
			str1: str1 + 1
			str2: str2 + 1
			c1: str1/1
			c2: str2/1									;@@ unsafe memory access
		]
		case [
			c2 <> null-byte [ 0]						;-- not matching
			aliased? 		[-1]						;-- similar (case-insensitive matching)
			true 			[ 1]						;-- same (case-sensitive matching)
		]
	]

	search: func [										;@@ use a faster lookup method later
		str 	  [c-string!]							;-- UTF-8 string
		return:	  [integer!]
		/local
			s	  [series!]
			entry [red-symbol!]
			end   [red-symbol!]
			id	  [integer!]
			i	  [integer!]
	][
		s: GET_BUFFER(symbols)	;-- (as series! symbols/node/value)，查 series-buffer!
		entry: as red-symbol! s/offset ;--固定指向 series-buffer! 的第一个 cell!
		end:   as red-symbol! s/tail   ;--不断移动，指向下一个未分配的 cell
		i: 1

		print-line ["003 symbol/search s: " as-integer s ", entry: " as-integer entry ", end: " as-integer end]

		while [entry < end][
			id: same? entry/cache str
			if id <> 0 [
				return either positive? id [i][0 - i]	;-- matching symbol found
			]
			i: i + 1
			entry: entry + 1
		]
		0												;-- no matching symbol
	]

	duplicate: func [
		src		 [c-string!]
		return:  [c-string!]
		/local
			node [node!]
			dst  [c-string!]
			s	 [series!]
			len	 [integer!]
	][
		len: 1 + length? src							;-- account for terminal NUL
		node: alloc-bytes len							;@@ TBD: mark this buffer as protected!
		s: as series! node/value
		dst: as c-string! s/offset

		copy-memory as byte-ptr! dst as byte-ptr! src len
		dst
	]

	make: func [
		s 		[c-string!]								;-- input c-string!
		return:	[integer!]
		/local
			sym	[red-symbol!]
			id	[integer!]
	][
		#if debug? = yes [if verbose > 0 [print-line "symbol/make"]]

		id: search s ;-- dateype/make-words 调用的全部是返回 0，因为搜不到

		print-line ["004 symbol/make id: " id]

		if positive? id [
			print-line ["004 symbol/make id exists: " id]
			return id
		]

		;--每次 ALLOC_TAIL(symbols) 都会使得 symbols/node/value 后的 cell 减少一个，tail + 1
		sym: as red-symbol! ALLOC_TAIL(symbols)		;--使用 symbols 的 series-buffer! 的空间，tail 会后移一位
		sym/header: TYPE_SYMBOL						;-- implicit reset of all header flags
		sym/alias:  either zero? id [-1][0 - id]	;-- -1: no alias, abs(id)>0: alias id
        ;--
		sym/node:   unicode/load-utf8 s 1 + system/words/length? s ;-- boot.red/system 函数
		sym/cache:  duplicate s ;-- 这里才给 symbol/cache 赋值，search 那里之后才能判断是否有重复

		print-line ["004 symbol/make sym: " as-integer sym]

        block/rs-length? symbols ;-- 返回当前 symbol 属于 symbols 的第几个 cell!
	]

	get: func [
		id		[integer!]
		return:	[red-symbol!]
		/local
			s	[series!]
	][
		s: GET_BUFFER(symbols)
		as red-symbol! s/offset + id - 1
	]

	resolve: func [
		id		[integer!]
		return:	[integer!]
		/local
			sym	[red-symbol!]
			s	[series!]
	][
		s: GET_BUFFER(symbols)
		sym: as red-symbol! s/offset + id - 1
		either positive? sym/alias [sym/alias][id]
	]

	push: func [

	][

	]

	;-- Actions --

	init: does [
		datatype/register [
			TYPE_SYMBOL
			TYPE_VALUE
			"symbol!"
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
