Red/System [
	Title:   "Common datatypes utility functions"
	Author:  "Nenad Rakocevic"
	File: 	 %common.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

names!: alias struct! [
	buffer	[c-string!]								;-- datatype name string
	size	[integer!]								;-- buffer size - 1 (not counting terminal `!`)
	word	[red-word!]								;-- datatype name as word! value
]

name-table:   declare names! 						;-- datatype names table
action-table: declare int-ptr!						;-- actions jump table


set-type: func [										;@@ convert to macro?
	cell [cell!]
	type [integer!]
][
	cell/header: cell/header and type-mask or type
]

alloc-at-tail: func [
	blk		[red-block!]
	return: [cell!]
][
	alloc-tail as series! blk/node/value ;--即 root/node 所指向的 series-buffer! 结构体
]

times: 0

alloc-tail: func [
	s		[series!] ;-- #define series! series-buffer!
	return:  [cell!]
	/local
		cell [red-value!]
][

	if times < 10 [
		print-line ["s: " as integer! s ", s/tail: " as integer! s/tail " + 1: " as integer! s/tail + 1 ", s/size: " s/size]
		print-line ["as byte-ptr! s + 1: " as integer! (as byte-ptr! s + 1)]
		print-line ["(as byte-ptr! s + 1) + s/size: " as integer! (as byte-ptr! s + 1) + s/size]
	]

	if (as byte-ptr! s/tail + 1) > ((as byte-ptr! s + 1) + s/size) [
		;-- 增加一个 cell! 的地址，比 series-buffer! + 所有 cell! 的地址大，
		;-- 说明 cell 用完了，要扩充
		s: expand-series s 0
	]

	cell: s/tail 		;-- 紧接着 root 这个 seriese-buffer! 之后
	;-- ensure that cell is within series upper boundary
	assert (as byte-ptr! cell) < ((as byte-ptr! s + 1) + s/size)

	s/tail: cell + 1	;-- move tail to next cell，把 root 指向的 series-buffer! 偏移到下一个 buffer

    times: times + 1
    print-line ["--- alloc-tail-" times ", cell: " as integer! cell ", s/tail: " as integer! s/tail ", s/size: " s/size]

	; if times < 3 [
	; 	times: times + 1
	; 	print-line ["--- alloc-tail-" times ", cell: " as integer! cell ", s/tail: " as integer! s/tail ", s/size: " s/size]
	; ]

	cell
]

alloc-tail-unit: func [
	s		 [series!]
	unit 	 [integer!]
	return:  [byte-ptr!]
	/local
		p	 [byte-ptr!]
][
	if ((as byte-ptr! s/tail) + unit) > ((as byte-ptr! s + 1) + s/size) [
		s: expand-series s 0
	]

	p: as byte-ptr! s/tail
	;-- ensure that cell is within series upper boundary
	assert p < ((as byte-ptr! s + 1) + s/size)

	s/tail: as cell! p + unit							;-- move tail to next unit slot
	p
]

copy-cell: func [
	src		[cell!]
	dst		[cell!]
	return: [red-value!]
][
	copy-memory											;@@ optimize for 16 bytes copying
		as byte-ptr! dst
		as byte-ptr! src
		size? cell!
	dst
]


words: context [
	_spec:			as red-word! 0
	_body:			as red-word! 0
	_words:			as red-word! 0
	_logic!:		as red-word! 0
	_integer!:		as red-word! 0
	_windows:		as red-word! 0
	_syllable:		as red-word! 0
	_macosx:		as red-word! 0
	_linux:			as red-word! 0
	_repeat:		as red-word! 0
	_foreach:		as red-word! 0
	_map-each:		as red-word! 0
	_remove-each:	as red-word! 0
	_exit:			as red-word! 0
	_return:		as red-word! 0

	spec:			-1
	body:			-1
	words:			-1
	logic!:			-1
	integer!:		-1
	repeat:			-1
	foreach:		-1
	map-each:		-1
	remove-each:	-1
	exit*:			-1
	return*:		-1

	build: does [
		_spec:			word/load "spec"
		_body:			word/load "body"
		_words:			word/load "words"
		_logic!:		word/load "logic!"
		_integer!:		word/load "integer!"
		_exit:			word/load "exit"
		_return:		word/load "return"

		_windows:		word/load "Windows"
		_syllable:		word/load "Syllable"
		_macosx:		word/load "MacOSX"
		_linux:			word/load "Linux"

		_repeat:		word/load "repeat"
		_foreach:		word/load "foreach"
		_map-each:		word/load "map-each"
		_remove-each:	word/load "remove-each"

		spec:			_spec/symbol
		body:			_body/symbol
		words:			_words/symbol
		logic!:			_logic!/symbol
		integer!:		_integer!/symbol
		repeat:			_repeat/symbol
		foreach:		_foreach/symbol
		map-each:		_map-each/symbol
		remove-each:	_remove-each/symbol
		exit*:			_exit/symbol
		return*:		_return/symbol
	]
]

refinements: context [
	local: 		as red-refinement! 0
	extern: 	as red-refinement! 0

	build: does [
		local:	refinement/load "local"
		extern:	refinement/load "extern"
	]
]
