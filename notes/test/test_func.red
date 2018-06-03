Red [ ]

i: 1
j: 2
s: "hello"
b: ["aa" "bb" 222]

f: function [
    n [integer!]
    s [string!]
    return: [integer!]
    /local
        i [integer!]
] [
    i: 2
    print s
    s: append s " world"
    n: n + 3
    m: j + n + i
    m
]

;print m     ;-- m 是 f 函数的本地变量，这里会报错
m: f 3 s
print s
type? :f
f2: :f
;print f2    ;-- REPL 和编译 exe print function! 都会导致 crash
;m: (f2 4 s) ;-- 看编译后的 stack-vm 是错的，不管是否加圆括号


; 嵌套函数
fn: function [ i [integer!] ] [
    f1: function [ j [integer!] ] [
        j + 2
    ]
    i: i + 1
    f1 i
]

; fn 0 ;-- 编译出来的 stack-vm 中 f_fn 没有对 f1 赋值，会导致 crash，但 REPL 可以
;a: fn 0
;print a


;-- 闭包，目前 Red 不支持
fc: function [i [integer!] /local loc] [
    loc: 0
    inner: function [j [integer!]] [
        loc: loc + j
    ]
    inner i
]

;f3: fc 1 ;-- 编译后执行 crash，Red 目前还不支持闭包

;-- interpreter 动态解释运行
do [
    name: "Red Programming Language"
    fun: function [name [string!]][
        print append "hello, " name
    ]
    fun name
]

do "print s"

