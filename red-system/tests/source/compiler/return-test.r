REBOL [
	Title:   "Red/System RETURN keyword test script"
	Author:  "Nenad Rakocevic"
	File: 	 %return-test.reds
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic. All rights reserved."
	License: "BSD-3 - https://github.com/dockimbel/Red/blob/origin/BSD-3-License.txt"
]

change-dir %../

~~~start-file~~~ "return-err"

  --test-- "return as last statement in until block"
	--compile-this "Red/System [] until [return]"
	--assert-msg? "*** Compilation Error: return is not allowed outside of a function"
	--clean
	
	--compile-this "Red/System [] foo: func [][until [return]]"
	--assert-msg? "*** Compilation Error: RETURN keyword used without return: declaration in foo"
	--clean
	
	--compile-this "Red/System [] foo: func [return: [integer!]][until [return]]"
	--assert-msg? "*** Compilation Error: missing argument"
	--clean
	
	--compile-this "Red/System [] foo: func [return: [integer!]][until [return true]]"
	--assert-msg? "*** Compilation Error: wrong return type in function: foo"
	--clean
	
	--compile-this "Red/System [] foo: func [return: [integer!]][until [return 123]]"
	--assert-msg? "*** Compilation Error: UNTIL requires a conditional expression"
	--clean
	
~~~end-file~~~


