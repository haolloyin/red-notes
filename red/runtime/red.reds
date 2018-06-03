Red/System [
	Title:   "Red runtime wrapper"
	Author:  "Nenad Rakocevic"
	File: 	 %red.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/dockimbel/Red/blob/master/BSL-License.txt
	}
]

red: context [
	;-- Runtime sub-system --

	#include %macros.reds
	#include %tools.reds

	#switch OS [										;-- loading OS-specific bindings
		Windows  [#include %platform/win32.reds]
		Syllable [#include %platform/syllable.reds]
		MacOSX	 [#include %platform/darwin.reds]
		#default [#include %platform/linux.reds]
	]

	;#include %threads.reds
	#include %allocator.reds
	;#include %collector.reds

	;-- Datatypes --

	#include %datatypes/structures.reds
	#include %datatypes/common.reds
	#include %unicode.reds

	#include %datatypes/datatype.reds
	#include %datatypes/unset.reds
	#include %datatypes/none.reds
	#include %datatypes/logic.reds
	#include %datatypes/block.reds
	#include %datatypes/string.reds
	#include %datatypes/integer.reds
	#include %datatypes/symbol.reds
	#include %datatypes/context.reds
	#include %datatypes/word.reds
	#include %datatypes/lit-word.reds
	#include %datatypes/set-word.reds
	#include %datatypes/get-word.reds
	#include %datatypes/refinement.reds
	#include %datatypes/char.reds
	#include %datatypes/native.reds
	#include %datatypes/action.reds
	#include %datatypes/op.reds
	#include %datatypes/path.reds
	#include %datatypes/lit-path.reds
	#include %datatypes/set-path.reds
	#include %datatypes/get-path.reds
	#include %datatypes/function.reds
	#include %datatypes/routine.reds
	#include %datatypes/paren.reds
	#include %datatypes/issue.reds
	#include %datatypes/file.reds

	;-- Debugging helpers --

	#include %debug-tools.reds

	;-- Core --
	#include %tokenizer.reds
	#include %actions.reds
	#include %natives.reds
	#include %stack.reds
	#include %interpreter.reds
	#include %simple-io.reds							;-- temporary file IO support

	_root:	 	declare red-block!						;-- statically alloc root cell for bootstrapping
	root:	 	declare red-block!						;-- root block
	symbols: 	declare red-block! 						;-- symbols table
	global-ctx: declare red-context!					;-- global context

	;-- Booting... --

	init: does [
		platform/init
		init-mem										;@@ needs a local context

		name-table: as names! allocate 50 * size? names!	 ;-- datatype names table
		action-table: as int-ptr! allocate 256 * 50 * size? pointer! ;-- actions jump table

		datatype/init
		unset/init
		none/init
		logic/init
		block/init
		string/init
		integer/init
		symbol/init
		_context/init
		word/init
		lit-word/init
		set-word/init
		get-word/init
		refinement/init
		char/init
		native/init
		action/init
		op/init
		path/init
		lit-path/init
		set-path/init
		get-path/init
		_function/init
		routine/init
		paren/init
		issue/init
		file/init

		actions/init

		print-line ["name-table: " as-integer name-table]
		print-line ["action-table: " as-integer action-table]
		print-line ["actions/table: " as-integer actions/table]

		;-- initialize memory before anything else
		alloc-node-frame nodes-per-frame		;-- 5k nodes
		alloc-series-frame						;-- first frame of 512KB

		print-line [lf "--- before memory alloc"]
		print-line ["_root: " as-integer _root]
		print-line ["root: " as-integer root]
		print-line ["symbols: " as-integer symbols]
		print-line ["global-ctx: " as-integer global-ctx]

		print-line [lf "--- after memory alloc"]
		print-line ["memory/total: " memory/total]
		print-line ["memory/s-start: " memory/s-start]
		print-line ["memory/s-size: " memory/s-size]
		print-line ["memory/s-max: " memory/s-max]

		print-line [lf "--- root"]
		root:	 	block/make-in null 2000

		root-node: root/node
		root-buf: as series-buffer! root/node/value

		print-line ["root: " as-integer root]
		print-line ["root/header: " root/header]
		print-line ["root/head: " root/head]
		print-line ["root/node: " as-integer root/node " -> " root/node/value]
		print-line ["root-buf: " as-integer root-buf]
		print-line ["root-tail: " as-integer root-buf/tail]
		print-line ["root-offset: " as-integer root-buf/offset]
		print-line ["memory/s-active: " as-integer memory/s-active]
		print-line ["memory/s-active/heap: " as-integer memory/s-active/heap]


		print-line [lf "--- symbols"]
		symbols: 	block/make-in root 1000

		symbols-buf: as series-buffer! symbols/node/value
		print-line ["symbols: " as-integer symbols]
		print-line ["symbols/node: " as-integer symbols/node " -> " symbols/node/value]
		print-line ["symbols/tail: " as-integer symbols-buf/tail]
		print-line ["symbols/offset: " as-integer symbols-buf/offset]
		print-line ["root-tail: " as-integer root-buf/tail]
		print-line ["root-offset: " as-integer root-buf/offset]
		print-line ["memory/s-active/heap: " as-integer memory/s-active/heap]


		print-line [lf "--- global-ctx"]
		global-ctx: _context/create root 1000 no

		print-line ["glocal-ctx: " as-integer global-ctx]
		print-line ["glocal-ctx/symbols: " as-integer global-ctx/symbols " -> " global-ctx/symbols/value]
		print-line ["root-tail: " as-integer root-buf/tail]
		print-line ["root-offset: " as-integer root-buf/offset]
		print-line ["glocal-ctx/values: " as-integer global-ctx/values" -> " global-ctx/values/value]
		print-line ["root-tail: " as-integer root-buf/tail]
		print-line ["root-offset: " as-integer root-buf/offset]
		print-line ["memory/s-active/heap: " as-integer memory/s-active/heap]

		;-------- output ---------
		comment {
		}

		print-line ["--- end ---" lf]

		print-line [lf "--- datatype/make-words ----"]
		datatype/make-words		;-- build datatype names as word! values

		print-line [lf "--- words/build ----"]
		words/build				;-- create symbols used internally

		print-line [lf "--- refinements/build ----"]
		refinements/build		;-- create refinements used internally

		print-line [lf "--- natives/build ----"]
		natives/init			;-- native specific init code

		stack/init

		print-line [lf "---- Main progam ----"]

		#if debug? = yes [
			verbosity: 0
			datatype/verbose:	verbosity
			unset/verbose:		verbosity
			none/verbose:		verbosity
			logic/verbose:		verbosity
			block/verbose:		verbosity
			string/verbose:		verbosity
			integer/verbose:	verbosity
			symbol/verbose:		verbosity
			_context/verbose:	verbosity
			word/verbose:		verbosity
			set-word/verbose:	verbosity
			refinement/verbose:	verbosity
			char/verbose:		verbosity
			path/verbose:		verbosity
			lit-path/verbose:	verbosity
			set-path/verbose:	verbosity
			get-path/verbose:	verbosity
			_function/verbose:	verbosity
			routine/verbose:	verbosity
			paren/verbose:		verbosity
			issue/verbose:		verbosity
			file/verbose:		verbosity

			actions/verbose:	verbosity
			natives/verbose:	verbosity

			stack/verbose:		verbosity
			unicode/verbose:	verbosity
		]
	]
]
