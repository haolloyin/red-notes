REBOL [
	Title:   "Red Lexical Scanner"
	Author:  "Nenad Rakocevic"
	File: 	 %lexer.r
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: "BSD-3 - https://github.com/dockimbel/Red/blob/master/BSD-3-License.txt"
]

lexer: context [
	verbose: 0
	
	line: 	none									;-- source code lines counter
	lines:	[]										;-- offsets of newlines marker in current block
	count?: yes										;-- if TRUE, lines counter is enabled
	cnt:	none									;-- counts nested {} in multi-line strings
	pos:	none									;-- source input position (error reporting)
	s:		none									;-- mark start position of new value
	e:		none									;-- mark end position of new value
	value:	none									;-- new value
	fail?:	none									;-- used for failing some parsing rules
	type:	none									;-- define the type of the new value
	
	;====== Parsing rules ======
	
	digit: charset "0123465798"
	hexa:  union digit charset "ABCDEF" 
	
	;-- UTF-8 encoding rules from: http://tools.ietf.org/html/rfc3629#section-4
	UTF-8-BOM: #{EFBBBF}
	ws-ASCII:  charset " ^-^M"						;-- ASCII common whitespaces
	ws-U+2k:   charset [#"^(80)" - #"^(8A)"]		;-- Unicode spaces in the U+2000-U+200A range
	UTF8-tail: charset [#"^(80)" - #"^(BF)"]
	UTF8-1:    charset [#"^(00)" - #"^(7F)"]
	
	UTF8-2: reduce [
		charset [#"^(C2)" - #"^(DF)"]
		UTF8-tail
	]
	
	UTF8-3: reduce [
		#{E0} 	 charset [#"^(A0)" - #"^(BF)"] UTF8-tail
		'| 		 charset [#"^(E1)" - #"^(EC)"] 2 UTF8-tail
		'| #{ED} charset [#"^(80)" - #"^(9F)"] UTF8-tail
		'| 		 charset [#"^(EE)" - #"^(EF)"] 2 UTF8-tail
	]
	
	UTF8-4: reduce [
		#{F0} 	 charset [#"^(90)" - #"^(BF)"] 2 UTF8-tail
		'| 		 charset [#"^(F1)" - #"^(F3)"] 3 UTF8-tail
		'| #{F4} charset [#"^(80)" - #"^(8F)"] 2 UTF8-tail
	]
	
	UTF8-char: [pos: UTF8-1 | UTF8-2 | UTF8-3 | UTF8-4]
	
	not-word-char:  charset {/\^^,'[](){}"#%$@:;}
	not-word-1st:	union not-word-char digit
	not-file-char:  charset {[](){}"%@:;}
	not-str-char:   #"^""
	not-mstr-char:  #"}"
	caret-char:	    charset [#"^(40)" - #"^(5F)"]
	non-printable-char: charset [#"^(00)" - #"^(1F)"]
	integer-end:	charset {^{"])}
	stop: 		    none
	
	control-char: reduce [
		charset [#"^(00)" - #"^(1F)"] 				;-- ASCII control characters
		'| #"^(C2)" charset [#"^(80)" - #"^(9F)"] 	;-- C2 control characters
	]
	
	UTF8-filtered-char: [
		[pos: stop :pos (fail?: [end skip]) | UTF8-char e: (fail?: none)]
		fail?
	]
	
	UTF8-printable: [
		[non-printable-char | not-str-char (fail?: [end skip]) | UTF8-char (fail?: none)]
		fail?
	]
	
	;-- Whitespaces list from: http://en.wikipedia.org/wiki/Whitespace_character
	ws: [
		pos: #"^/" (
			if count? [
				line: line + 1 
				append/only lines to block! stack/tail?
			]
		)
		| ws-ASCII									;-- only the common whitespaces are matched
		| #{C2} [
			#{85}									;-- U+0085 (Newline)
			| #{A0}									;-- U+00A0 (No-break space)
		]
		| #{E1} [
			#{9A80}									;-- U+1680 (Ogham space mark)
			| #{A08E}								;-- U+180E (Mongolian vowel separator)
		]
		| #{E2} [
			#{80} [
				ws-U+2k								;-- U+2000-U+200A range
				| #{A8}								;-- U+2028 (Line separator)
				| #{A9}								;-- U+2029 (Paragraph separator)
				| #{AF}								;-- U+202F (Narrow no-break space)
			]
			| #{819F}								;-- U+205F (Medium mathematical space)
		]
		| #{E38080}									;-- U+3000 (Ideographic space)
	]
	
	newline-char: [
		#"^/"
		| #{C285}									;-- U+0085 (Newline)
		| #{E280} [
			#{A8}									;-- U+2028 (Line separator)
			| #{A9}									;-- U+2029 (Paragraph separator)
		]
	]
	
	counted-newline: [pos: #"^/" (line: line + 1)]
	
	ws-no-count: [(count?: no) ws (count?: yes)]
	
	any-ws: [pos: any ws]
	
	symbol-rule: [
		(stop: [not-word-char | ws-no-count | control-char])
		some UTF8-filtered-char e:
	]
	
	begin-symbol-rule: [							;-- 1st char in symbols is restricted
		(stop: [not-word-1st | ws-no-count | control-char])
		UTF8-filtered-char
		opt symbol-rule
	]
	
	path-rule: [
		pos: slash :pos (							;-- path detection barrier
			stack/push path!
			stack/push to type copy/part s e		;-- push 1st path element
		)
		some [
			slash
			s: [
				integer-number-rule
				| begin-symbol-rule			(type: word!)
				| paren-rule 				(type: paren!)
				| #":" s: begin-symbol-rule	(type: get-word!)
				;@@ add more datatypes here
			] (
				stack/push either type = paren! [	;-- append path element
					value
				][
					to type copy/part s e
				]
				type: path!
			)
			opt [#":" (type: set-path!)]
		]
		(value: stack/pop type)
	]
	
	word-rule: 	[
		(type: word!) s: begin-symbol-rule [
			path-rule 								;-- path matched
			| (value: copy/part s e)				;-- word matched
			opt [#":" (type: set-word!)]
		] 
	]
	
	get-word-rule: [
		#":" (type: get-word!) s: begin-symbol-rule [
			path-rule (
				value/1: to get-word! value/1		;-- workaround missing get-path! in R2
			)
			| (
				type: get-word!
				value: copy/part s e				;-- word matched
			)
		]
	]
	
	lit-word-rule: [
		#"'" (type: word!) s: begin-symbol-rule [
			path-rule (type: lit-path!)				;-- path matched
			| (
				type: lit-word!
				value: copy/part s e				;-- word matched
			)
		]
	]
	
	issue-rule: [#"#" (type: issue!) s: symbol-rule]
	
	refinement-rule: [slash (type: refinement!) s: symbol-rule]
	
	slash-rule: [s: [slash opt slash] e:]
	
	hexa-rule: [2 8 hexa e: #"h" (type: integer!)]
		
	integer-number-rule: [
		(type: integer!)
		opt [#"-" | #"+"] digit any [digit | #"'" digit] e:
	]
	
	integer-rule: [
		integer-number-rule
		pos: [										;-- protection rule from typo with sticky words
			[integer-end | ws-no-count | end] (fail?: none)
			| skip (fail?: [end skip]) 
		] :pos 
		fail?
	]
		
	block-rule: [#"[" (stack/push block!) any-value #"]" (value: stack/pop block!)]
	
	paren-rule: [#"(" (stack/push paren!) any-value	#")" (value: stack/pop paren!)]
	
	escaped-char: [
		"^^(" [
			s: [2 6 hexa] e: (						;-- Unicode values allowed up to 10FFFFh
				value: encode-UTF8-char s e
			)
			| [
				"null" 	 (value: #"^(00)")
				| "back" (value: #"^(08)")
				| "tab"  (value: #"^(09)")
				| "line" (value: #"^(0A)")
				| "page" (value: #"^(0C)")
				| "esc"  (value: #"^(1B)")
				| "del"	 (value: #"^(7F)")
			] 
		] #")"
		| #"^^" [
			[
				#"/" 	(value: #"^/")
				| #"-"	(value: #"^-")
				| #"?" 	(value: #"^(del)")
				| #"^^" (value: #"^^")				;-- caret escaping case
				| #"{"	(value: #"{")
				| #"}"	(value: #"}")
				| #"^""	(value: #"^"")
			]
			| s: caret-char (value: s/1 - 64)
		]
	]
	
	char-rule: [
		{#"} (type: char!) [
			s: escaped-char
			| copy value UTF8-printable (value: as-binary value) 
		] {"}
	]
	
	line-string: [
		{"} s: (type: string! stop: [not-str-char | newline-char])
		any UTF8-filtered-char
		e: {"}
	]
	
	nested-curly-braces: [
		(cnt: 1 fail?: none)
		any [
			[
				counted-newline 
				| "^^{" | "^^}"
				| #"{" (cnt: cnt + 1)
				| e: #"}" (if zero? cnt: cnt - 1 [fail?: [end skip]])
				| UTF8-char
			] fail?
		]
		#"}"
	]
	
	multiline-string: [#"{" s: (type: string!) nested-curly-braces]
	
	string-rule: [line-string | multiline-string]
	
	binary-rule: [
		"#{" (type: binary!) 
		s: any [counted-newline | 2 hexa | ws-no-count | comment-rule]
		e: #"}"
	]
	
	file-rule: [
		#"%" (type: file! stop: [not-file-char | ws-no-count])
		s: some UTF8-filtered-char e:
	]
	
	escaped-rule: [
		"#[" any-ws [
			"none" 	  (value: none)
			| "true"  (value: true)
			| "false" (value: false)
			| s: [
				"none!" | "logic!" | "block!" | "integer!" | "word!" 
				| "set-word!" | "get-word!" | "lit-word!" | "refinement!"
				| "binary!" | "string!"	| "char!" | "bitset!" | "path!"
				| "set-path!" | "lit-path!" | "native!"	| "action!"
				| "issue!" | "paren!" | "function!"
			] e: (value: get to word! copy/part s e)
		]  any-ws #"]"
	]
	
	comment-rule: [#";" [to #"^/" | to end]]
	
	multiline-comment-rule: [
		"comment" any-ws #"{" nested-curly-braces
	]
	
	wrong-delimiters: [
		pos: [
			  #"]" (value: #"[") | #")" (value: #"(")
			| #"[" (value: #"]") | #"(" (value: #")")
		] :pos
		(throw-error/with ["missing matching" value])
	]

	literal-value: [
		pos: (e: none) s: [
			comment-rule
			| multiline-comment-rule
			| escaped-rule    (stack/push value)
			| integer-rule	  (stack/push load-integer   copy/part s e)
			| hexa-rule		  (stack/push decode-hexa	 copy/part s e)
			| word-rule		  (stack/push to type value)
			| lit-word-rule	  (stack/push to type value)
			| get-word-rule	  (stack/push to type value)
			| refinement-rule (stack/push to refinement! copy/part s e)
			| slash-rule	  (stack/push to word! 	   	 copy/part s e)
			| issue-rule	  (stack/push to issue!	   	 copy/part s e)
			| file-rule		  (stack/push to file!		 copy/part s e)
			| char-rule		  (stack/push decode-UTF8-char value)
			| block-rule	  (stack/push value)
			| paren-rule	  (stack/push value)
			| string-rule	  (stack/push load-string s e)
			| binary-rule	  (stack/push load-binary s e)
		]
	]
	
	any-value: [pos: any [literal-value | ws]]

	header: [
		pos: thru "Red" any-ws block-rule (stack/push value)
		| (throw-error/with "Invalid Red program") end skip
	]

	program: [
		pos: opt UTF-8-BOM
		header
		any-value
		opt wrong-delimiters
	]
	
	;====== Helper functions ======
	
	stack: context [
		stk: []
		
		push: func [value][
			either any [value = block! value = paren! value = path!][
				if value = path! [value: block!]
				insert/only tail stk value: make value 1
				value
			][
				insert/only tail last stk :value
			]
		]
		
		pop: func [type [datatype!]][
			if any [type = path! type = set-path!][type: block!]
			
			if type <> type? last stk [
				throw-error/with ["invalid" mold type "closing delimiter"]
			]
			also last stk remove back tail stk
		]
		
		tail?: does [tail last stk]
		reset: does [clear stk]
	]
	
	throw-error: func [/with msg [string! block!]][
		print rejoin [
			"*** Syntax Error: " either with [
				uppercase/part reform msg 1
			][
				reform ["Invalid" mold type "value"]
			]
			"^/*** line: " line
			"^/*** at: " mold copy/part pos 40
		]
		halt
	]

	add-line-markers: func [blk [block!]][	
		foreach pos lines [new-line pos yes]
		clear lines
	]
	
	pad-head: func [s [string!]][
		head insert/dup s #"0" 8 - length? s
	]
	
	encode-UTF8-char: func [s [string!] e [string!] /local c code new][
		c: debase/base pad-head copy/part s e 16
		while [c/1 = 0][c: next c]					;-- trim heading zeros
		code: to integer! c
		
		case [
			code <= 127  [
				new: to char! code					;-- c <= 7Fh
			]
			code <= 2047 [							;-- c <= 07FFh
				new: (shift/left (shift code 6) or #"^(C0)" 8)
						or (code and #"^(3F)") or #"^(80)"
			]
			code <= 65535 [							;-- c <= FFFFh
				new: (shift/left (shift code 12) or #"^(E0)" 16)
						or (shift/left (shift code 6) and #"^(3F)" or #"^(80)" 8)
						or (code and #"^(3F)") or #"^(80)"
			]
			code <= 1114111 [						;-- c <= 10FFFFh
				new: (shift/left (shift code 18) or #"^(F0)" 24)
						or (shift/left (shift code 12) and #"^(3F)" or #"^(80)" 16)
						or (shift/left (shift code 6)  and #"^(3F)" or #"^(80)" 8)
						or (code and #"^(3F)") or #"^(80)"
			]
			'else [
				throw-error/with "Codepoints above U+10FFFF are not supported"
			]
		]
		if integer? new [
			new: debase/base to-hex new 16
			remove-each byte new [byte = #"^(null)"]
		]	
		new
	]
	
	decode-UTF8-char: func [value][
		if char? value [return encode-char to integer! value]
		
		value: switch/default length? value [
			1 [value]
			2 [
				value: value and #{1F3F}
				value: add shift/left value/1 6 value/2
			]
			3 [
				value: value and #{0F3F3F}
				value: add add
					shift/left value/1 12
					shift/left value/2 6
					value/3
			]
			4 [
				value: value and #{073F3F3F}
				value: add add add
					shift/left value/1 18
					shift/left value/2 12
					shift/left value/3 6
					value/4
			]
		][
			throw-error/with "Unsupported or invalid UTF-8 encoding"
		]	
		
		encode-char to integer! value				;-- special encoding for Unicode char!
	]
	
	encode-char: func [value [integer!]][
		head insert to-hex value #"'"
	]
	
	decode-hexa: func [s [string!]][
		to integer! debase/base s 16
	]

	load-integer: func [s [string!]][
		unless attempt [s: to integer! s][throw-error]
		s
	]

	load-string: func [s [string!] e [string!] /local new filter][
		new: make string! offset? s e				;-- allocated size close to final size
		filter: get pick [UTF8-char UTF8-filtered-char] s/-1 = #"{"

		parse/all/case copy/part s e [
			any [
				escaped-char   (insert tail new value)
				| s: filter e: (insert/part tail new s e)
			]										;-- exit on matching " or }
		]
		new
	]
	
	load-binary: func [s [string!] e [string!] /local new byte][
		new: make binary! (offset? s e) / 2			;-- allocated size above final size

		parse/all/case s [
			some [
				copy byte 2 hexa (insert tail new debase/base byte 16)
				| ws | comment-rule
				| #"}" end skip
			]
		]
		new
	]
	
	process: func [src [string! binary!] /local blk][
		line: 1
		count?: yes
		
		blk: stack/push block!						;-- root block

		unless parse/all/case src program [throw-error]
		
		add-line-markers blk
		stack/reset
		blk
	]
]