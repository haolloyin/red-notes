Red [
	Title:   "Red series test script"
	Author:  "Nenad Rakocevic & Peter W A Wood"
	File: 	 %series-test.red
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2013 Nenad Rakocevic & Peter W A Wood. All rights reserved."
	License: "BSD-3 - https://github.com/dockimbel/Red/blob/origin/BSD-3-License.txt"
]

#include  %../../../../quick-test/quick-test.red

~~~start-file~~~ "series"

===start-group=== "first, second, third, fourth, fifth"

	--test-- "series-fstff-1"
	  sf1-ser:  [1 2 3 4 5]
	--assert 1 = first sf1-ser
	--assert 2 = second sf1-ser
	--assert 3 = third sf1-ser
	--assert 4 = fourth sf1-ser
	--assert 5 = fifth sf1-ser
	--assert 5 = last sf1-ser

	--test-- "series-fstff-2"
	  sf2-ser:  [1 2 3 4 5]
	--assert 2 = first next sf2-ser
	
	--test-- "series-fstff-3"
	  sf3-ser:  "12345"
	--assert 49 = first sf3-ser
	--assert 53 = last sf3-ser
	
	--test-- "series-fstff-4"
	  sf4-ser:  [1 2 3 4 5]
	--assert none = fifth next sf4-ser
	
	--test-- "series-fstff-5"
	  sf5-ser:  "12345"
	--assert 53 = fifth sf5-ser
	
	--test-- "series-fstff-6"
	;;  stf6-ser: #{000102}
	;;--assert 0 = first stf6-ser
	
	--test-- "series-fstff-7"
	--assert 'a = first [a b c d]
	
	--test-- "series-fstff-8"
	--assert 'a = first first first first first first first first first [[[[[[[[[a]]]]]]]]]
	
	--test-- "series-fstff-9"
	--assert #"^(00)" = first "^(00)"
	
	--test-- "series-fstff-10"
	--assert #"^(00)" = first "^(00)a" 
	  
	--test-- "series-fstff-11"
	--assert #"^(00)" = second "a^(00)"
	
	--test-- "series-fstff-12"
	--assert #"^(00)" = second "a^(00)b"
	
===end-group===

===start-group=== "next"
  --test-- "series-next-1"
  --assert 2 = first next [1 2 3 4 5]
  --test-- "series-next-2"
  --assert 3 = first next next [1 2 3 4 5]
  --test-- "series-next-3"
  --assert 4 = first next next next [1 2 3 4 5]
  --test-- "series-next-4"
  --assert 5 = first next next next next [1 2 3 4 5]
  --test-- "series-next-5"
  --assert none = first next next next next next [1 2 3 4 5]
  --test-- "series-next-6"
  --assert 50 = first next "12345"
  --test-- "series-next-7"
  --assert 51 = first next next "12345"
  --test-- "series-next-8"
  --assert 52 = first next next next "12345"
  --test-- "series-next-9"
  --assert 53 = first next next next next "12345"
  --test-- "series-next-10"
  --assert none = first next next next next next "12345"
  --test-- "series-next-11"
  --assert #"^(00)" = first next "a^(00)"
  --test-- "series-next-12"
  --assert #"^(00)" = first next "a^(00)b" 
===end-group===

===start-group=== "back"
  --test-- "series-back-1"
  --assert 1 = first back next [1 2 3 4 5]
  --test-- "series-back-2"
  --assert 1 = first back back next next [1 2 3 4 5]
  --test-- "series-back-3"
  --assert 1 = first back back back next next next [1 2 3 4 5]
  --test-- "series-back-4"
  --assert 1 = first back back back back next next next next [1 2 3 4 5]
  --test-- "series-back-5"
  --assert 1 = first back back back back back next next next next next [1 2 3 4 5]
  --test-- "series-back-6"
  --assert 49 = first back next "12345"
  --test-- "series-back-7"
  --assert 50 = first back next next "12345"
  --test-- "series-back-8"
  --assert 51 = first back next next next "12345"
  --test-- "series-back-9"
  --assert 52 = first back next next next next "12345"
  --test-- "series-back-10"
  --assert 53 = first back next next next next next "12345"
  --test-- "series-back-11"
  --assert 49 = first back "12345"
===end-group===

===start-group=== "tail"
  --test-- "series-tail-1"
  --assert 5 = first back tail [1 2 3 4 5]
  --test-- "seried-tail-2" 
  --assert none = pick tail [1 2 3 4 5] 1
===end-group===

===start-group=== "pick"

  --test-- "series-pick-1"
  --assert none = pick "" 1
  
  --test-- "series-pick-2"
  --assert none = pick "" 0
  
  --test-- "series-pick-3"
  --assert none = pick "" 2
  
  --test-- "series-pick-4"
  --assert 49 = pick "12345" 1
  
  --test-- "series-pick-5"
  --assert 53 = pick "12345" 5
  
  --test-- "series-pick-6"
  --assert 1 = pick [1 2 3 4 5] 1
  
  --test-- "series-pick-7"
  --assert 2 = pick [1 2 3 4 5] 2
  
  --test-- "series-pick-8"
  --assert 4 = pick [1 2 3 4 5] 4
  
  --test-- "series-pick-9"
  --assert 5 = pick [1 2 3 4 5] 5
  
  --test-- "series-pick-10"
  --assert 2 = pick next next next [1 2 3 4 5] -2
  
  --test-- "series-pick-11"
  --assert 3 = pick next next next [1 2 3 4 5] -1
  
  --test-- "series-pick-12"
  --assert none = pick next next next [1 2 3 4 5] 0
  
  --test-- "series-pick-13"
  --assert none = pick "12345" -1
  
  --test-- "series-pick-14"
    sp14-i: 1
  --assert 1 = pick [1 2 3 4 5] sp14-i
  
  --test-- "series-pick-15"
    sp15-i: 4
  --assert 4 = pick [1 2 3 4 5] sp15-i
  
  --test-- "series-pick-16"
    sp16-i: -2
  --assert 2 = pick next next next [1 2 3 4 5] sp16-i
  
  --test-- "series-pick-17"
    sp17-i: 0
  --assert none = pick next next next [1 2 3 4 5] sp17-i
  
  --test-- "series-pick-18"
    sp18-i: -1
  --assert none = pick "12345" sp18-i
  
  
===end-group===

===start-group=== "select"
  --test-- "series-select-1"
  --assert 2 = select [1 2 3 4 5] 1
  --test-- "series-select-2"
  --assert 5 = select [1 2 3 4 5] 4
  --test-- "series-select-3"
  --assert none = select [1 2 3 4 5] 0
  --test-- "series-select-4"
  --assert none = select [1 2 3 4 5] 5
  
	--test-- "series-select-5"
		a: [2 3 5 test #"A" a/b 5 "tesT"]
		--assert #"A" = select a 'test
		
	--test-- "series-select-6"
		list: [a 1 b 2 c 3]
		--assert 2 = list/b
		
	--test-- "series-select-6"
		--assert 'test = select/skip a 5 2

	--test-- "series-select-7"
		s: "Hello, Red World!"
		--assert #"e" = select s #"r"

	--test-- "series-select-8"
		--assert #"l" = select/last s #"r"

	--test-- "series-select-9"
		--assert #"d" = select/skip s "e" 2

	--test-- "series-select-10"
		--assert none? select s #"!"
  
===end-group===

===start-group=== "append"
  --test-- "series-append-1"
  --assert 6 = last append [1 2 3 4 5] 6
  --test-- "series-append-2"
  --assert 6 = last append [1 2 3 4] [5 6]
  --assert 4 = fourth append [1 2 3 4] [5 6]
  --assert 5 = fifth append [1 2 3 4] [5 6]
  --test-- "series-append-3"
  --assert 55 = last append "12345" "67"
  --test-- "series-append-4"
  --assert 233 = last append "abcde" "é" ;; utf-8 C3 A9
  --test-- "series-append-5"
  --assert 49 = last append "abcdeé" "1" ;; utf-8 C3 A9
  --test-- "series-append-6"
  --assert 10000 = last append "abcde" "✐"
  --test-- "series-append-7"
  --assert 48 = last append "abcde^(2710)" "0"
  --test-- "series-append-8"
  --assert 10000 = last append "abcdeé" "^(2710)"
  --test-- "series-append-9"
  --assert 233 = last append "abcde^(2710)" "é"
  --test-- "series-append-10"
  --assert 65536 = last append "abcde" "^(010000)"   
  --test-- "series-append-11"
  --assert 48 = last append "abcde^(010000)" "0"
  --test-- "series-append-12"
  --assert 65536 = last append "abcde^(2710)é" "^(010000)" 
  
  --test-- "series-append-13"
	blk: make block! 1
	append blk 'x/y
	append/only blk  'r/s
	--assert "[x y r/s]" = mold blk

  --test-- "series-append-14"
	blk: [1 2]
	append/dup/part blk [4 5 6] 3 2
	--assert "[1 2 4 5 4 5 4 5]" = mold blk
	
  --test-- "series-append-15"
	blk: [1 2]
	append/dup/part blk [4 5 6] 2 3
	--assert "[1 2 4 5 6 4 5 6]" = mold blk	

  --test-- "series-append-16"
	str: "12"
	append/dup/part str "456" 3 2 
	--assert str = "12454545"

  --test-- "series-append-17"
	str: "12"
	append/part/dup str "456" 3 2 
	--assert str = "12456456"

	
===end-group===

===start-group=== "series-equal"

  --test-- "series-equal-1"
  --assert [] = []
  
  --test-- "series-equal-2"
    se2-b: []
  --assert [] = se2-b
  
  --test-- "series-equal-3"
    se3-b: []
  --assert se3-b = []
  
  --test-- "series-equal-4"
    se4-b: [1]
  --assert se4-b = [1]
  
  --test-- "series-equal-5"
    se5-b: ["abcde"]
  --assert se5-b = ["abcde"]
  
===end-group===

===start-group=== "series-find"

  --test-- "series-find-1"
  --assert 3 = first find [1 2 3 4 5] 3 
  
  --test-- "series-find-2"
  --assert 'a = first find [a b c d e] 'a
  
  --test-- "series-find-3"
  --assert 'e = first find [a b c d e] 'e
  
  --test-- "series-find-4"
  --assert none = find [] 'a
  
  --test-- "series-find-5"
  --assert none = find [1 2 3 4] 'a
  
  --test-- "series-find-6"
  --assert none = find next [a b c d e] 'a
  
  --test-- "series-find-7"
  --assert 51 = first find "12345" "3"
  
  --test-- "series-find-8"
  --assert 51 = first find "12345" "^(33)"
  
  --test-- "series-find-9"
  --assert 51 = first find "12345" first "^(33)"
  
  --test-- "series-find-10"
  --assert 51 = first find "12345" #"3"
  
  --test-- "series-find-11"
  --assert 51 = first find "12345" #"^(33)"
  
  --test-- "series-find-12"
  --assert #"3" = first find "12345" #"3"
  
  --test-- "series-find-13"
  --assert #"a" = first find "abcdefghijklmno" #"a"
  
  --test-- "series-find-14"
  --assert "ghijklmno" = find "abcdefghijklmno" "ghij"
  
  --test-- "series-find-15"
  --assert #"o" = first find "abcdefghijklmno" #"o"
  
  --test-- "series-find-16"
  --assert "o" = find "abcdefghijklmno" #"o"
  
  --test-- "series-find-17"
  --assert #"o" = first find "abcdefghijklmno" "o"
  
  --test-- "series-find-18"
  --assert "o" = find "abcdefghijklmno" "o"
  
  --test-- "series-find-19"
  --assert none = find "" #"a"
  
  --test-- "series-find-20"
  --assert none = find "" #"^(00)"
  
  --test-- "series-find-21"
  --assert none = find "" ""
  
  --test-- "series-find-22"
  --assert "^(00)" = find "^(00)" "^(00)"
  
  --test-- "series-find-23"
  --assert "a^(00)" = find "a^(00)" "a^(00)"
  
  --test-- "series-find-24"
  --assert "^(00)a" = find "^(00)a" "^(00)a"
  
  --test-- "series-find-25"
  --assert "^(00)" = find "^(00)" #"^(00)"
  
  --test-- "series-find-26"
  --assert #"^(00)" = first find "^(00)" #"^(00)"
  
  --test-- "series-find-27"
  --assert #"é" = first find "abcdeé" #"é" 
  
  --test-- "series-find-28"
  --assert "é" = find "abcdeé" "é" 
  
  --test-- "series-find-29"
  --assert "é" = find append "abcde" "é" "é" 
  
  --test-- "series-find-30"
  --assert 10000 = first find "abcde✐" "✐"
  
  --test-- "series-find-30a"
  --assert 10000 = first find "abcde✐" #"✐"
  
  --test-- "series-find-31"
  --assert none = find "012345" 48
  
  --test-- "series-find-32"
  --assert "^(010000)" = find "abcde^(2710)é^(010000)" "^(010000)" 
  
  --test-- "series-find-33"
  --assert "^(010000)cde^(2710)é" = find "ab^(010000)cde^(2710)é" #"^(010000)"
  
  --test-- "series-find-34"
  --assert "^(010000)cde^(2710)é" = find "ab^(010000)cde^(2710)é" "^(010000)"

	--test-- "series-find-35"  
		a: [2 3 5 test #"A" a/b 5 "tesT"]
		append a datatype!
		--assert 3 = index? find a 5
	
	--test-- "series-find-36"
		--assert 8 = index? find a "test"

	--test-- "series-find-37"
		--assert none? find a 99

	--test-- "series-find-38"
		--assert none? find/skip a 'test 2
		
	--test-- "series-find-39"
		--assert 4 = index? find/skip a 'test 3

	--test-- "series-find-40"
		--assert 7 = index? find/last a 5
		
	--test-- "series-find-41"
		--assert 2 = index? find/reverse skip a 4 3

	--test-- "series-find-42"
		--assert 8 = index? find skip a 3 "test"
		
	--test-- "series-find-43"
		--assert none? find/last/part a 3 1

	--test-- "series-find-44"
		--assert 2 = index? find/last/part a 3 2

	--test-- "series-find-45"
		--assert none? find/part a 'test 3

	--test-- "series-find-46"
		--assert 4 = index? find/part a 'test 4

	--test-- "series-find-47"
		--assert 2 = index? find a [3 5]
		
	--test-- "series-find-48"
		--assert 3 = index? find a [5 'test]
	
	--test-- "series-find-49"
		--assert none? find a 'a/b
	
	--test-- "series-find-50"
		--assert 6 = index? find/only a 'a/b

	--test-- "series-find-51"
		--assert 2 = index? find/match a 2

	--test-- "series-find-52"
		--assert none? find/match a 3

	--test-- "series-find-53"
		--assert 4 = index? find/match a [2 3 5]

	--test-- "series-find-54"
		--assert none? find/match next a [2 3 5]
		
	--test-- "series-find-55"
		--assert 4 = index? find/tail a 5

	--test-- "series-find-56"
		--assert 3 = index? find 'a/b/3/d 3
		
	--test-- "series-find-57"
		--assert 2 = index? find 'a/b/3/d 'b
		
	--test-- "series-find-58"
		s: "Hello, Red World!"
		--assert 6 = index? find s ","

	--test-- "series-find-59"
		--assert 8 = index? find s "Red"

	--test-- "series-find-60"
		--assert 8 = index? find s "red"

	--test-- "series-find-61"
		--assert 6 = index? find s #","

	--test-- "series-find-62"
		--assert 1 = index? find "^(00)" "^(00)"

	--test-- "series-find-63"
		--assert 5 = index? find/skip s #"o" 2
		
	--test-- "series-find-64"
		--assert 13 = index? find/skip s #"o" 3

	--test-- "series-find-65"
		--assert 15 = index? find/last s #"l"

	--test-- "series-find-66"
		--assert 13 = index? find/last s "o"

	--test-- "series-find-67"
		--assert none? find/part s #"o" 4

	--test-- "series-find-68"
		--assert 5 = index? find/part s #"o" 5

	--test-- "series-find-69"
		--assert 2 = index? find/match s #"h"

	--test-- "series-find-70"
		--assert 5 = index? find/match s "hell"

	--test-- "series-find-71"
		--assert 5 = index? find/match s "Hell"

	--test-- "series-find-72"
		--assert none? find/match/case s "hell"

	--test-- "series-find-73"
		--assert 5 = index? find/match/case s "Hell"

	--test-- "series-find-74"
		--assert none? find/match next s "hell"

	--test-- "series-find-75"
		--assert 8 = index? find/case s "Red"
		
===end-group===

===start-group=== "remove"

	--test-- "remove-blk-1"
		a: [1 2 3]
		--assert [2 3] = remove a
		--assert [2 3] = a

	--test-- "remove-blk-2"
		a: [1 2 3]
		--assert [3] = remove next a
		--assert [1 3] = a

	--test-- "remove-blk-3"
		--assert tail? head remove []

	--test-- "remove-blk-4"
		a: [1 2 3]
		--assert [3] = remove/part a 2
		--assert [3] = a

	--test-- "remove-blk-5"
		a: [1 2 3]
		--assert [1 2 3] = remove/part a a

	--test-- "remove-blk-6"
		a: [1 2 3]
		--assert [2 3] = remove/part a next a
		--assert [2 3] = a
	
	--test-- "remove-blk-7"
		a: [1 2 3]
		--assert [1 2 3] =  remove/part a 0

	--test-- "remove-str-1"
		a: "123"
		--assert "23" = remove a
		--assert "23" = a

	--test-- "remove-str-2"
		a: "123"
		--assert "3" = remove next a
		--assert "13" = a

	--test-- "remove-str-3"
		--assert tail? head remove ""

	--test-- "remove-str-4"
		a: "123"
		--assert "3" = remove/part a 2
		--assert "3" = a

	--test-- "remove-str-5"
		a: "123"
		--assert "123" = remove/part a a

	--test-- "remove-str-6"
		a: "123"
		--assert "23"= remove/part a next a
		--assert "23" = a
	
	--test-- "remove-str-7"
		a: "123"
		--assert "123" = remove/part a 0

===end-group===

===start-group=== "clear"
	
	--test-- "clear-1"
		c1-b: [1 2 3 4 5]
	--assert [] = clear c1-b
	
	--test-- "clear-2"
		c2-s: "a"
	--assert "" = clear c2-s
	
	--test-- "clear-3"
		c3-s: "é"
	--assert "" = clear c2-s
	
	--test-- "clear-4"
		c4-s: "✐"
	--assert "" = clear c4-s
	
	--test-- "clear-5"
		c5-s: "^(2710)"
	--assert "" = clear c5-s
	
	--test-- "clear-6"
		c6-b: [a [b] c]
		clear second c6-b
	--assert [a [] c] = c6-b
	
	--test-- "clear-7"
		c7-b: [a b c d e f]
		c7-b: next next next c7-b
	--assert [a b c] = head clear c7-b
	
	--test-- "clear-8"
		c8-b: "123^(2710)"
		c8-b: next next next c8-b
	--assert "123" = head clear c8-b
	
	--test-- "clear-9"
		c9-b: "^(2710)123"
		c9-b:  next c9-b
		--assert "^(2710)" = head clear c9-b
	
===end-group===

===start-group=== "at"
	
	--test-- "at-1 #issue 501"
	--assert "c" = at tail "abc" -1
	--assert "" = at tail "abc" 0
	
	--test-- "at-2"
	--assert "bcde" = at "abcde" 2
	--assert "abcde" = at "abcde" 1
	--assert "abcde" = at "abcde" 0
	--assert "abcde" = at "abcde" -1
	--assert "abcde" = at "abcde" -256
	--assert "e" = at "abcde" 5
	--assert "" = at "abcde" 6
	--assert "" = at "abcde" 1028
	
	--test-- "at-3"
	--assert [b c d e] = at [a b c d e] 2
	--assert [a b c d e] = at [a b c d e] 1
	--assert [a b c d e] = at [a b c d e] 0
	--assert [a b c d e] = at [a b c d e] -1
	--assert [a b c d e] = at [a b c d e] -256
	--assert [e] = at [a b c d e] 5
	--assert [] = at [a b c d e] 6
	--assert [] = at [a b c d e] 1028
	
===end-group===

~~~end-file~~~

