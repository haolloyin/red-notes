
-=== Red Compiler 0.4.0 ===- 

Compiling /Red/src/red-v040/dig/test/test.red ...
[
    stack/mark-native ~set 
    word/push ~a 
    integer/push 1 
    word/set 
    stack/unwind 
    stack/reset 
    ------------| "a: 1" 
    stack/mark-native ~set 
    word/push ~b 
    stack/mark-native ~multiply 
    stack/mark-native ~add 
    integer/push 2 
    word/get ~a 
    actions/add* 
    stack/unwind 
    integer/push 33 
    actions/multiply* 
    stack/unwind 
    word/set 
    stack/unwind 
    stack/reset 
    ------------| "b: 2 + a * 33" 
    stack/mark-native ~print 
    word/get ~b 
    natives/print* 
    stack/unwind 
    stack/reset 
    ------------| "print b" 
    stack/mark-native ~set 
    word/push ~s 
    string/push str199 
    word/set 
    stack/unwind 
    stack/reset 
    ------------| {s: "hello"} 
    stack/mark-native ~prin 
    word/get ~s 
    natives/prin* 
    stack/unwind 
    stack/reset 
    ------------| "prin s" 
    stack/mark-native ~print 
    stack/mark-native ~tail 
    string/push str200 
    actions/tail* 
    stack/unwind 
    natives/print* 
    stack/unwind 
    stack/reset 
    ------------| {print tail " world"} 
    stack/reset 
    integer/push 3 
    rlim1: integer/get* 
    _context/set-integer ~a rlim1 
    r1: 0 
    stack/reset 
    stack/mark-native ~repeat 
    while [
        r1: 
        r1 + 1 
        r1 <= rlim1
    ] [
        _context/set-integer ~a r1 
        stack/reset 
        stack/mark-native ~print 
        word/get ~a 
        natives/print* 
        stack/unwind 
        ------------| "print a"
    ] 
    stack/unwind 
    stack/reset 
    ------------| "repeat a 3 [print a]" 
    integer/push 2 
    i1: integer/get* 
    either i1 <= 0 [stack/reset none/push-last] [
        until [
            stack/reset 
            stack/mark-native ~print 
            string/push str201 
            natives/print* 
            stack/unwind 
            ------------| {print "Red"} 
            i1: i1 - 1 
            i1 = 0
        ]
    ] 
    stack/reset 
    ------------| {loop 2 [print "Red"]} 
    while [
        stack/reset 
        stack/mark-native ~greater? 
        word/get ~a 
        integer/push 0 
        natives/greater?* 
        stack/unwind 
        ------------| "a > 0" 
        logic/true?
    ] [
        stack/reset 
        stack/mark-native ~print 
        word/get ~a 
        natives/print* 
        stack/unwind 
        stack/reset 
        ------------| "print a" 
        stack/mark-native ~set 
        word/push ~i 
        stack/mark-native ~add 
        word/get ~i 
        integer/push 1 
        actions/add* 
        stack/unwind 
        word/set 
        stack/unwind 
        ------------| "i: i + 1"
    ] 
    stack/reset 
    ------------| "while [a > 0] [print a i: i + 1]" 
    stack/mark-native ~set 
    word/push ~inc 
    _function/push blk202 blk204 ctx203 as integer! :f_inc 
    word/set 
    stack/unwind 
    stack/reset 
    ------------| "inc: func [n] [n + 1]" 
    stack/mark-native ~set 
    word/push ~b 
    stack/mark-func ~inc 
    word/get ~a 
    f_inc 
    stack/unwind 
    word/set 
    stack/unwind 
    stack/reset 
    ------------| "b: inc a" 
    stack/mark-native ~print 
    word/get ~b 
    natives/print* 
    stack/unwind 
    ------------| "print b"
]
...compilation time: 	 140 ms
