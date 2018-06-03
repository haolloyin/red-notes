Red [ ]

;-- number
a: 1
b: 2 + a * 33
print b

;-- string
s: "hello"
prin s
print tail " world"

;-- loop
repeat a 3 [print a]

loop 2 [print "Red"]

while [a > 0] [print a a: a - 1]

;-- function
inc: func [n][n + 1]
b: inc a
print b