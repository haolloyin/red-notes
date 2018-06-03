
-=== Red Compiler 0.4.0 ===-

Compiling /Dropbox/Red/src/red-v040/dig/test/test_func.red ...
output: [
    Red/System [origin: 'Red]
    red/init
    with red [
        exec: context [
            ------------| "Symbols"
            ~datatype!: word/load "datatype!"
            ~make: word/load "make"
            ~unset!: word/load "unset!"
            ~none!: word/load "none!"
            ~logic!: word/load "logic!"
            ~block!: word/load "block!"
            ~string!: word/load "string!"
            ~integer!: word/load "integer!"
            ~word!: word/load "word!"
            ~error!: word/load "error!"
            ~typeset!: word/load "typeset!"
            ~file!: word/load "file!"
            ~set-word!: word/load "set-word!"
            ~get-word!: word/load "get-word!"
            ~lit-word!: word/load "lit-word!"
            ~refinement!: word/load "refinement!"
            ~binary!: word/load "binary!"
            ~paren!: word/load "paren!"
            ~char!: word/load "char!"
            ~issue!: word/load "issue!"
            ~path!: word/load "path!"
            ~set-path!: word/load "set-path!"
            ~get-path!: word/load "get-path!"
            ~lit-path!: word/load "lit-path!"
            ~native!: word/load "native!"
            ~action!: word/load "action!"
            ~op!: word/load "op!"
            ~function!: word/load "function!"
            ~closure!: word/load "closure!"
            ~routine!: word/load "routine!"
            ~object!: word/load "object!"
            ~port!: word/load "port!"
            ~bitset!: word/load "bitset!"
            ~float!: word/load "float!"
            ~none: word/load "none"
            ~true: word/load "true"
            ~false: word/load "false"
            ~type: word/load "type"
            ~any-type!: word/load "any-type!"
            ~spec: word/load "spec"
            ~return: word/load "return"
            ~reflect: word/load "reflect"
            ~value: word/load "value"
            ~field: word/load "field"
            ~form: word/load "form"
            ~part: word/load "part"
            ~limit: word/load "limit"
            ~mold: word/load "mold"
            ~only: word/load "only"
            ~all: word/load "all"
            ~flat: word/load "flat"
            ~absolute: word/load "absolute"
            ~number!: word/load "number!"
            ~add: word/load "add"
            ~value1: word/load "value1"
            ~value2: word/load "value2"
            ~divide: word/load "divide"
            ~multiply: word/load "multiply"
            ~negate: word/load "negate"
            ~number: word/load "number"
            ~power: word/load "power"
            ~exponent: word/load "exponent"
            ~remainder: word/load "remainder"
            ~round: word/load "round"
            ~n: word/load "n"
            ~to: word/load "to"
            ~scale: word/load "scale"
            ~even: word/load "even"
            ~down: word/load "down"
            ~half-down: word/load "half-down"
            ~floor: word/load "floor"
            ~ceiling: word/load "ceiling"
            ~half-ceiling: word/load "half-ceiling"
            ~subtract: word/load "subtract"
            ~even?: word/load "even?"
            ~odd?: word/load "odd?"
            ~append: word/load "append"
            ~series: word/load "series"
            ~series!: word/load "series!"
            ~length: word/load "length"
            ~dup: word/load "dup"
            ~count: word/load "count"
            ~at: word/load "at"
            ~index: word/load "index"
            ~back: word/load "back"
            ~clear: word/load "clear"
            ~copy: word/load "copy"
            ~deep: word/load "deep"
            ~types: word/load "types"
            ~kind: word/load "kind"
            ~find: word/load "find"
            ~case: word/load "case"
            ~any: word/load "any"
            ~with: word/load "with"
            ~wild: word/load "wild"
            ~skip: word/load "skip"
            ~size: word/load "size"
            ~last: word/load "last"
            ~reverse: word/load "reverse"
            ~tail: word/load "tail"
            ~match: word/load "match"
            ~head: word/load "head"
            ~head?: word/load "head?"
            ~index?: word/load "index?"
            ~insert: word/load "insert"
            ~length?: word/load "length?"
            ~next: word/load "next"
            ~pick: word/load "pick"
            ~poke: word/load "poke"
            ~remove: word/load "remove"
            ~select: word/load "select"
            ~offset: word/load "offset"
            ~tail?: word/load "tail?"
            ~if: word/load "if"
            ~cond: word/load "cond"
            ~then-blk: word/load "then-blk"
            ~unless: word/load "unless"
            ~either: word/load "either"
            ~true-blk: word/load "true-blk"
            ~false-blk: word/load "false-blk"
            ~conds: word/load "conds"
            ~while: word/load "while"
            ~body: word/load "body"
            ~until: word/load "until"
            ~loop: word/load "loop"
            ~repeat: word/load "repeat"
            ~word: word/load "word"
            ~foreach: word/load "foreach"
            ~forall: word/load "forall"
            ~func: word/load "func"
            ~function: word/load "function"
            ~extern: word/load "extern"
            ~does: word/load "does"
            ~has: word/load "has"
            ~vars: word/load "vars"
            ~switch: word/load "switch"
            ~cases: word/load "cases"
            ~default: word/load "default"
            ~do: word/load "do"
            ~reduce: word/load "reduce"
            ~into: word/load "into"
            ~out: word/load "out"
            ~any-block!: word/load "any-block!"
            ~compose: word/load "compose"
            ~get: word/load "get"
            ~set: word/load "set"
            ~any-word!: word/load "any-word!"
            ~print: word/load "print"
            ~prin: word/load "prin"
            ~equal?: word/load "equal?"
            ~not-equal?: word/load "not-equal?"
            ~strict-equal?: word/load "strict-equal?"
            ~lesser?: word/load "lesser?"
            ~greater?: word/load "greater?"
            ~lesser-or-equal?: word/load "lesser-or-equal?"
            ~greater-or-equal?: word/load "greater-or-equal?"
            ~same?: word/load "same?"
            ~not: word/load "not"
            ~halt: word/load "halt"
            ~type?: word/load "type?"
            ~load: word/load "load"
            ~source: word/load "source"
            ~url!: word/load "url!"
            ~header: word/load "header"
            ~stats: word/load "stats"
            ~show: word/load "show"
            ~info: word/load "info"
            ~bind: word/load "bind"
            ~context: word/load "context"
            ~any-object!: word/load "any-object!"
            ~+: word/load "+"
            ~-: word/load "-"
            ~*: word/load "*"
            ~/: word/load "/"
            ~=: word/load "="
            ~<>: word/load "<>"
            ~==: word/load "=="
            ~=?: word/load "=?"
            ~<: word/load "<"
            ~>: word/load ">"
            ~<=: word/load "<="
            ~>=: word/load ">="
            ~Red: word/load "Red"
            ~yes: word/load "yes"
            ~on: word/load "on"
            ~no: word/load "no"
            ~off: word/load "off"
            ~tab: word/load "tab"
            ~cr: word/load "cr"
            ~newline: word/load "newline"
            ~lf: word/load "lf"
            ~escape: word/load "escape"
            ~slash: word/load "slash"
            ~sp: word/load "sp"
            ~space: word/load "space"
            ~null: word/load "null"
            ~crlf: word/load "crlf"
            ~dot: word/load "dot"
            ~quit-return: word/load "quit-return"
            ~status: word/load "status"
            ~quit: word/load "quit"
            ~empty?: word/load "empty?"
            ~??: word/load "??"
            ~probe: word/load "probe"
            ~quote: word/load "quote"
            ~first: word/load "first"
            ~s: word/load "s"
            ~second: word/load "second"
            ~third: word/load "third"
            ~fourth: word/load "fourth"
            ~fifth: word/load "fifth"
            ~action?: word/load "action?"
            ~block?: word/load "block?"
            ~char?: word/load "char?"
            ~datatype?: word/load "datatype?"
            ~file?: word/load "file?"
            ~function?: word/load "function?"
            ~get-path?: word/load "get-path?"
            ~get-word?: word/load "get-word?"
            ~integer?: word/load "integer?"
            ~issue?: word/load "issue?"
            ~lit-path?: word/load "lit-path?"
            ~lit-word?: word/load "lit-word?"
            ~logic?: word/load "logic?"
            ~native?: word/load "native?"
            ~none?: word/load "none?"
            ~op?: word/load "op?"
            ~paren?: word/load "paren?"
            ~path?: word/load "path?"
            ~refinement?: word/load "refinement?"
            ~set-path?: word/load "set-path?"
            ~set-word?: word/load "set-word?"
            ~string?: word/load "string?"
            ~unset?: word/load "unset?"
            ~word?: word/load "word?"
            ~any-series?: word/load "any-series?"
            ~spec-of: word/load "spec-of"
            ~body-of: word/load "body-of"
            ~system: word/load "system"
            ~version: word/load "version"
            ~words: word/load "words"
            ~platform: word/load "platform"
            ~_context: word/load "_context"
            ~get-words: word/load "get-words"
            ~OS: word/load "OS"
            ~Windows: word/load "Windows"
            ~SET_RETURN: word/load "SET_RETURN"
            ~_windows: word/load "_windows"
            ~Syllable: word/load "Syllable"
            ~_syllable: word/load "_syllable"
            ~MacOSX: word/load "MacOSX"
            ~_macosx: word/load "_macosx"
            ~_linux: word/load "_linux"
            ~else: word/load "else"
            ~replace: word/load "replace"
            ~pattern: word/load "pattern"
            ~local: word/load "local"
            ~pos: word/load "pos"
            ~len: word/load "len"
            ~zero?: word/load "zero?"
            ~i: word/load "i"
            ~j: word/load "j"
            ~b: word/load "b"
            ~f: word/load "f"
            ~m: word/load "m"
            ~f2: word/load "f2"
            ~fn: word/load "fn"
            ~f1: word/load "f1"
            ~fc: word/load "fc"
            ~loc: word/load "loc"
            ~inner: word/load "inner"
            ~name: word/load "name"
            ~fun: word/load "fun"
            ------------| "Literals"
            stack/mark-native ~append
            blk1: block/push* 3
            stack/mark-native ~append
            block/push* 10
            tmp: string/load {Returns a new value made from a spec for that value's type.} 60
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~type
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "The datatype or a prototype value." 35
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~spec
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "The specification^-of the new value." 36
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Returns the specified datatype." 32
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 1
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk2: block/push* 3
            stack/mark-native ~append
            block/push* 6
            tmp: string/load {Returns internal details about a value via reflection.} 55
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~field
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~word!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load {spec, body, words, etc. Each datatype defines its own reflectors} 65
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 3
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk3: block/push* 3
            stack/mark-native ~append
            block/push* 9
            tmp: string/load {Returns a user-friendly string representation of a value.} 58
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load "Limit the length of the result" 31
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~limit
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~string!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 5
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk4: block/push* 3
            stack/mark-native ~append
            block/push* 15
            tmp: string/load {Returns a source format string representation of a value.} 58
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~only
            block/append*
            stack/keep
            tmp: string/load "Exclude outer brackets if value is a block" 43
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~all
            block/append*
            stack/keep
            tmp: string/load "TBD: Return value in loadable format" 37
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~flat
            block/append*
            stack/keep
            tmp: string/load "TBD: Exclude all indentation" 29
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load "Limit the length of the result" 31
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~limit
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~string!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 6
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk5: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns the non-negative value." 32
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 10
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk6: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns the sum of the two values." 35
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 11
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk7: block/push* 3
            stack/mark-native ~append
            block/push* 9
            tmp: string/load "Returns the quotient of two values." 36
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "The dividend (numerator)." 26
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "The divisor (denominator)." 27
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 12
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk8: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns the product of two values." 35
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 13
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk9: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns the opposite (additive inverse) value." 47
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~number
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 14
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk10: block/push* 3
            stack/mark-native ~append
            block/push* 9
            tmp: string/load {Returns a number raised to a given power (exponent).} 53
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~number
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Base value." 12
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~exponent
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "The power (index) to raise the base value by." 46
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 15
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk11: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load {Returns what is left over when one value is divided by another.} 64
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 16
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk12: block/push* 3
            stack/mark-native ~append
            block/push* 20
            tmp: string/load {TBD: Returns the nearest integer. Halves round up (away from zero) by default.} 79
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~n
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~to
            block/append*
            stack/keep
            tmp: string/load "Return the nearest multiple of the scale parameter" 51
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~scale
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Must be a non-zero value" 25
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~even
            block/append*
            stack/keep
            tmp: string/load "Halves round toward even results" 33
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~down
            block/append*
            stack/keep
            tmp: string/load {Round toward zero, ignoring discarded digits. (truncate)} 57
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~half-down
            block/append*
            stack/keep
            tmp: string/load "Halves round toward zero" 25
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~floor
            block/append*
            stack/keep
            tmp: string/load "Round in negative direction" 28
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~ceiling
            block/append*
            stack/keep
            tmp: string/load "Round in positive direction" 28
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~half-ceiling
            block/append*
            stack/keep
            tmp: string/load "Halves round in positive direction" 35
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 17
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk13: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns the difference between two values." 43
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 18
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk14: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns true if the number is evenly divisible by 2.} 53
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~number
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 19
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk15: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns true if the number has a remainder of 1 when divided by 2.} 67
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~number
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 20
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk16: block/push* 3
            stack/mark-native ~append
            block/push* 17
            tmp: string/load {Inserts value(s) at series tail; returns series head.} 54
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load "Limit the number of values inserted" 36
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~length
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~number!
            block/append*
            stack/keep
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~only
            block/append*
            stack/keep
            tmp: string/load {Insert block types as single values (overrides /part)} 54
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~dup
            block/append*
            stack/keep
            tmp: string/load "Duplicate the inserted values" 30
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~count
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 25
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk17: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns a series at a given index." 35
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~index
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 26
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk18: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns a series at the previous index." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 27
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk19: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Removes series values from current index to tail; returns new tail.} 68
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 29
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk20: block/push* 3
            stack/mark-native ~append
            block/push* 15
            tmp: string/load "Returns a copy of a non-scalar value." 38
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load "Limit the length of the result" 31
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~length
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~number!
            block/append*
            stack/keep
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~deep
            block/append*
            stack/keep
            tmp: string/load "Copy nested values" 19
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~types
            block/append*
            stack/keep
            tmp: string/load "Copy only specific types of non-scalar values" 46
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~kind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~datatype!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 30
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk21: block/push* 3
            stack/mark-native ~append
            block/push* 31
            tmp: string/load {Returns the series where a value is found, or NONE.} 52
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~series!
            block/append*
            stack/keep
            word/push ~none!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load "Limit the length of the search" 31
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~length
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~number!
            block/append*
            stack/keep
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~only
            block/append*
            stack/keep
            tmp: string/load "Treat a series search value as a single value" 46
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~case
            block/append*
            stack/keep
            tmp: string/load "Perform a case-sensitive search" 32
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~any
            block/append*
            stack/keep
            tmp: string/load "TBD: Use * and ? wildcards in string searches" 46
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~with
            block/append*
            stack/keep
            tmp: string/load "TBD: Use custom wildcards in place of * and ?" 46
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~wild
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~string!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~skip
            block/append*
            stack/keep
            tmp: string/load "Treat the series as fixed size records" 39
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~size
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~last
            block/append*
            stack/keep
            tmp: string/load "Find the last occurrence of value, from the tail" 49
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~reverse
            block/append*
            stack/keep
            tmp: string/load {Find the last occurrence of value, from the current index} 58
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~tail
            block/append*
            stack/keep
            tmp: string/load {Return the tail of the match found, rather than the head} 57
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~match
            block/append*
            stack/keep
            tmp: string/load {Match at current index only and return tail of match} 53
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 31
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk22: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns a series at its first index." 37
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 32
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk23: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns true if a series is at its first index." 48
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~logic!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 33
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk24: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns the current series index, relative to the head.} 56
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 34
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk25: block/push* 3
            stack/mark-native ~append
            block/push* 17
            tmp: string/load {Inserts value(s) at series index; returns series head.} 55
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load "Limit the number of values inserted" 36
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~length
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~number!
            block/append*
            stack/keep
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~only
            block/append*
            stack/keep
            tmp: string/load {Insert block types as single values (overrides /part)} 54
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~dup
            block/append*
            stack/keep
            tmp: string/load "Duplicate the inserted values" 30
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~count
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 35
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk26: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns the number of values in the series, from the current index to the tail.} 80
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 36
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk27: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns a series at the next index." 36
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 37
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk28: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns the series value at a given index." 43
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~index
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~integer!
            block/append*
            stack/keep
            word/push ~logic!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 38
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk29: block/push* 3
            stack/mark-native ~append
            block/push* 9
            tmp: string/load {Replaces the series value at a given index, and returns the new value.} 71
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~index
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~integer!
            block/append*
            stack/keep
            word/push ~logic!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 39
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk30: block/push* 3
            stack/mark-native ~append
            block/push* 9
            tmp: string/load {Returns the series at the same index after removing a value.} 61
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~series!
            block/append*
            stack/keep
            word/push ~none!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load {Removes a number of values, or values up to the given series index} 67
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~length
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~number!
            block/append*
            stack/keep
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~series!
            block/append*
            stack/keep
            word/push ~none!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 40
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk31: block/push* 3
            stack/mark-native ~append
            block/push* 29
            tmp: string/load {Find a value in a series and return the next value, or NONE.} 61
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~series!
            block/append*
            stack/keep
            word/push ~none!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~part
            block/append*
            stack/keep
            tmp: string/load "Limit the length of the search" 31
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~length
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~number!
            block/append*
            stack/keep
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~only
            block/append*
            stack/keep
            tmp: string/load "Treat a series search value as a single value" 46
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~case
            block/append*
            stack/keep
            tmp: string/load "Perform a case-sensitive search" 32
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~any
            block/append*
            stack/keep
            tmp: string/load "TBD: Use * and ? wildcards in string searches" 46
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~with
            block/append*
            stack/keep
            tmp: string/load "TBD: Use custom wildcards in place of * and ?" 46
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~wild
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~string!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~skip
            block/append*
            stack/keep
            tmp: string/load "Treat the series as fixed size records" 39
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~size
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~last
            block/append*
            stack/keep
            tmp: string/load "Find the last occurrence of value, from the tail" 49
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~reverse
            block/append*
            stack/keep
            tmp: string/load {Find the last occurrence of value, from the current index} 58
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 42
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk32: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns the series relative to the current index." 50
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~offset
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 44
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk33: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns a series at the index after its last value.} 52
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 46
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk34: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns true if a series is past its last value." 49
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~logic!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 47
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk35: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {If condition is true, evaluate block; else return NONE.} 56
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~cond
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~then-blk
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 1
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk36: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {If condition is not true, evaluate block; else return NONE.} 60
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~cond
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~then-blk
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 2
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk37: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load {If condition is true, eval true-block; else eval false-blk.} 60
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~cond
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~true-blk
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~false-blk
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 3
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk38: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load "Evaluates, returning at the first that is true." 48
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~conds
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 4
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk39: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load {Evaluates, returning at the first that is not true.} 52
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~conds
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 5
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk40: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Evaluates body until condition is true." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~cond
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 6
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk41: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load "Evaluates body until it is true." 33
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 7
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk42: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Evaluates body a number of times." 34
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~count
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 8
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk43: block/push* 3
            stack/mark-native ~append
            block/push* 9
            tmp: string/load {Evaluates body a number of times, tracking iteration count.} 60
            string/push
            tmp
            block/append*
            stack/keep
            lit-word/push ~word
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~word!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Iteration counter; not local to loop" 37
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Number of times to evaluate body" 33
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 9
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk44: block/push* 3
            stack/mark-native ~append
            block/push* 8
            tmp: string/load "Evaluates body for each value in a series." 43
            string/push
            tmp
            block/append*
            stack/keep
            lit-word/push ~word
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~word!
            block/append*
            stack/keep
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Word, or words, to set on each iteration" 41
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 10
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk45: block/push* 3
            stack/mark-native ~append
            block/push* 6
            tmp: string/load "Evaluates body for all values in a series." 43
            string/push
            tmp
            block/append*
            stack/keep
            lit-word/push ~word
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~word!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Word referring to series to iterate over" 41
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 11
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk46: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Defines a function with a given spec and body." 47
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~spec
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 12
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk47: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load {Defines a function, making all words found in body local.} 58
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~spec
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~extern
            block/append*
            stack/keep
            tmp: string/load "Exclude words that follow this refinement" 42
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 13
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk48: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load {Defines a function with no arguments or local variables.} 57
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 14
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk49: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Defines a function with local variables, but no arguments.} 59
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~vars
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~body
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 15
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk50: block/push* 3
            stack/mark-native ~append
            block/push* 11
            tmp: string/load {Evaluates the first block following the value found in cases.} 62
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "The value to match" 19
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~cases
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~default
            block/append*
            stack/keep
            tmp: string/load {Specify a default block, if value is not found in cases} 56
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~case
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Default block to evaluate" 26
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 16
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk51: block/push* 3
            stack/mark-native ~append
            block/push* 6
            tmp: string/load {Evaluates the block following the first true condition.} 56
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~cases
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Block of condition-block pairs" 31
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~all
            block/append*
            stack/keep
            tmp: string/load {Test all conditions, evaluating the block following each true condition} 72
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 17
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk52: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load {Evaluates a value, returning the last evaluation result.} 57
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 18
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk53: block/push* 3
            stack/mark-native ~append
            block/push* 8
            tmp: string/load {Returns a copy of a block, evaluating all expressions.} 55
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~into
            block/append*
            stack/keep
            tmp: string/load {Put results in out block, instead of creating a new block} 58
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~out
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Target block for results, when /into is used" 45
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 35
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk54: block/push* 3
            stack/mark-native ~append
            block/push* 12
            tmp: string/load "Returns a copy of a block, evaluating only parens." 51
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~deep
            block/append*
            stack/keep
            tmp: string/load "Compose nested blocks" 22
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~only
            block/append*
            stack/keep
            tmp: string/load {Compose nested blocks as blocks containing their values} 56
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~into
            block/append*
            stack/keep
            tmp: string/load {Put results in out block, instead of creating a new block} 58
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~out
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Target block for results, when /into is used" 45
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 36
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk55: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns the value a word refers to." 36
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~word
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~word!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~any
            block/append*
            stack/keep
            tmp: string/load {If word has no value, return UNSET rather than causing an error} 64
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 19
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk56: block/push* 3
            stack/mark-native ~append
            block/push* 11
            tmp: string/load "Sets the value(s) one or more words refer to." 46
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~word
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~any-word!
            block/append*
            stack/keep
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Word or block of words to set" 30
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Value or block of values to assign to words" 44
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~any
            block/append*
            stack/keep
            tmp: string/load {Allow UNSET as a value rather than causing an error} 52
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 20
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk57: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load "Outputs a value followed by a newline." 39
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 21
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk58: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load "Outputs a value." 17
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 22
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk59: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns true if two values are equal." 38
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 23
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk60: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns true if two values are not equal." 42
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 24
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk61: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns true if two values are equal, and also the same datatype.} 66
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 25
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk62: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns true if the first value is less than the second.} 57
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 26
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk63: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns true if the first value is greater than the second.} 60
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 27
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk64: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns true if the first value is less than or equal to the second.} 69
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 28
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk65: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load {Returns true if the first value is greater than or equal to the second.} 72
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 29
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk66: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns true if two values have the same identity." 51
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~value2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 30
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk67: block/push* 3
            stack/mark-native ~append
            block/push* 3
            tmp: string/load {Returns the negation (logical complement) of a value.} 54
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 31
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk68: block/push* 3
            stack/mark-native ~append
            block/push* 1
            tmp: string/load "Stops evaluation." 18
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 32
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk69: block/push* 3
            stack/mark-native ~append
            block/push* 5
            tmp: string/load "Returns the datatype of a value." 33
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~word
            block/append*
            stack/keep
            tmp: string/load "Return a word value, rather than a datatype value" 50
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 33
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk70: block/push* 3
            stack/mark-native ~append
            block/push* 14
            tmp: string/load {Returns a value or block of values by reading and evaluating a source.} 71
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~source
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 5
            word/push ~file!
            block/append*
            stack/keep
            word/push ~url!
            block/append*
            stack/keep
            word/push ~string!
            block/append*
            stack/keep
            word/push ~binary!
            block/append*
            stack/keep
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~header
            block/append*
            stack/keep
            tmp: string/load "TBD: Include Red header as a loaded value" 42
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~all
            block/append*
            stack/keep
            tmp: string/load "TBD: Don't evaluate Red header" 31
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~type
            block/append*
            stack/keep
            tmp: string/load "TBD:" 5
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~into
            block/append*
            stack/keep
            tmp: string/load {Put results in out block, instead of creating a new block} 58
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~out
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Target block for results, when /into is used" 45
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            integer/push 34
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk71: block/push* 3
            stack/mark-native ~append
            block/push* 7
            tmp: string/load "Returns interpreter statistics." 32
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~show
            block/append*
            stack/keep
            tmp: string/load "TBD:" 5
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~info
            block/append*
            stack/keep
            tmp: string/load "Output formatted results" 25
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~integer!
            block/append*
            stack/keep
            word/push ~block!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 37
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk72: block/push* 3
            stack/mark-native ~append
            block/push* 7
            word/push ~word
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~block!
            block/append*
            stack/keep
            word/push ~any-word!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~context
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~any-word!
            block/append*
            stack/keep
            word/push ~any-object!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~copy
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~block!
            block/append*
            stack/keep
            word/push ~any-word!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            integer/push 38
            block/append*
            stack/unwind
            str73: string/load "^M^/" 3
            stack/mark-native ~append
            blk74: block/push* 4
            tmp: string/load {Stops evaluation and exits the program with a given status.} 60
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~status
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Process termination value to return" 36
            string/push
            tmp
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk75: block/push* 2
            word/push ~quit
            block/append*
            stack/keep
            word/push ~status
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk76: block/push* 5
            tmp: string/load "Stops evaluation and exits the program." 40
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~return
            block/append*
            stack/keep
            word/push ~status
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            tmp: string/load "Return an exit status" 22
            string/push
            tmp
            block/append*
            stack/unwind
            ctx77: _context/make blk76 yes
            stack/mark-native ~append
            blk78: block/push* 3
            word/push ~quit-return
            block/append*
            stack/keep
            word/push ~any
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push-local ctx77 1
            block/append*
            stack/keep
            integer/push 0
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            stack/mark-native ~append
            blk79: block/push* 5
            tmp: string/load "Returns true if a series is at its tail." 41
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~logic!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx80: _context/make blk79 yes
            stack/mark-native ~append
            blk81: block/push* 2
            word/push ~tail?
            block/append*
            stack/keep
            word/push-local ctx80 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk82: block/push* 3
            tmp: string/load "Prints a word and the value it refers to (molded)." 51
            string/push
            tmp
            block/append*
            stack/keep
            lit-word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~word!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx83: _context/make blk82 yes
            stack/mark-native ~append
            blk84: block/push* 8
            word/push ~prin
            block/append*
            stack/keep
            word/push ~mold
            block/append*
            stack/keep
            get-word/push-local ctx83 0
            block/append*
            stack/keep
            word/push ~prin
            block/append*
            stack/keep
            tmp: string/load ": " 3
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~probe
            block/append*
            stack/keep
            stack/mark-native ~append
            path/push* 2
            word/push ~get
            block/append*
            stack/keep
            word/push ~any
            block/append*
            stack/unwind
            block/append*
            stack/keep
            get-word/push-local ctx83 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk85: block/push* 2
            tmp: string/load "Returns a value after printing its molded form." 48
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/unwind
            ctx86: _context/make blk85 yes
            stack/mark-native ~append
            blk87: block/push* 4
            word/push ~print
            block/append*
            stack/keep
            word/push ~mold
            block/append*
            stack/keep
            word/push-local ctx86 0
            block/append*
            stack/keep
            word/push-local ctx86 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk88: block/push* 1
            get-word/push ~value
            block/append*
            stack/unwind
            ctx89: _context/make blk88 yes
            stack/mark-native ~append
            blk90: block/push* 1
            get-word/push-local ctx89 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk91: block/push* 3
            tmp: string/load "Returns the first value in a series." 37
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~s
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx92: _context/make blk91 yes
            stack/mark-native ~append
            blk93: block/push* 3
            word/push ~pick
            block/append*
            stack/keep
            word/push-local ctx92 0
            block/append*
            stack/keep
            integer/push 1
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk94: block/push* 3
            tmp: string/load "Returns the second value in a series." 38
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~s
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx95: _context/make blk94 yes
            stack/mark-native ~append
            blk96: block/push* 3
            word/push ~pick
            block/append*
            stack/keep
            word/push-local ctx95 0
            block/append*
            stack/keep
            integer/push 2
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk97: block/push* 3
            tmp: string/load "Returns the third value in a series." 37
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~s
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx98: _context/make blk97 yes
            stack/mark-native ~append
            blk99: block/push* 3
            word/push ~pick
            block/append*
            stack/keep
            word/push-local ctx98 0
            block/append*
            stack/keep
            integer/push 3
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk100: block/push* 3
            tmp: string/load "Returns the fourth value in a series." 38
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~s
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx101: _context/make blk100 yes
            stack/mark-native ~append
            blk102: block/push* 3
            word/push ~pick
            block/append*
            stack/keep
            word/push-local ctx101 0
            block/append*
            stack/keep
            integer/push 4
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk103: block/push* 3
            tmp: string/load "Returns the fifth value in a series." 37
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~s
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx104: _context/make blk103 yes
            stack/mark-native ~append
            blk105: block/push* 3
            word/push ~pick
            block/append*
            stack/keep
            word/push-local ctx104 0
            block/append*
            stack/keep
            integer/push 5
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk106: block/push* 3
            tmp: string/load "Returns the last value in a series." 36
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~s
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx107: _context/make blk106 yes
            stack/mark-native ~append
            blk108: block/push* 5
            word/push ~pick
            block/append*
            stack/keep
            word/push ~back
            block/append*
            stack/keep
            word/push ~tail
            block/append*
            stack/keep
            word/push-local ctx107 0
            block/append*
            stack/keep
            integer/push 1
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk109: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx110: _context/make blk109 yes
            stack/mark-native ~append
            blk111: block/push* 4
            word/push ~action!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx110 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk112: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx113: _context/make blk112 yes
            stack/mark-native ~append
            blk114: block/push* 4
            word/push ~block!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx113 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk115: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx116: _context/make blk115 yes
            stack/mark-native ~append
            blk117: block/push* 4
            word/push ~char!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx116 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk118: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx119: _context/make blk118 yes
            stack/mark-native ~append
            blk120: block/push* 4
            word/push ~datatype!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx119 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk121: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx122: _context/make blk121 yes
            stack/mark-native ~append
            blk123: block/push* 4
            word/push ~file!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx122 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk124: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx125: _context/make blk124 yes
            stack/mark-native ~append
            blk126: block/push* 4
            word/push ~function!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx125 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk127: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx128: _context/make blk127 yes
            stack/mark-native ~append
            blk129: block/push* 4
            word/push ~get-path!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx128 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk130: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx131: _context/make blk130 yes
            stack/mark-native ~append
            blk132: block/push* 4
            word/push ~get-word!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx131 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk133: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx134: _context/make blk133 yes
            stack/mark-native ~append
            blk135: block/push* 4
            word/push ~integer!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx134 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk136: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx137: _context/make blk136 yes
            stack/mark-native ~append
            blk138: block/push* 4
            word/push ~issue!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx137 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk139: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx140: _context/make blk139 yes
            stack/mark-native ~append
            blk141: block/push* 4
            word/push ~lit-path!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx140 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk142: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx143: _context/make blk142 yes
            stack/mark-native ~append
            blk144: block/push* 4
            word/push ~lit-word!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx143 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk145: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx146: _context/make blk145 yes
            stack/mark-native ~append
            blk147: block/push* 4
            word/push ~logic!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx146 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk148: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx149: _context/make blk148 yes
            stack/mark-native ~append
            blk150: block/push* 4
            word/push ~native!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx149 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk151: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx152: _context/make blk151 yes
            stack/mark-native ~append
            blk153: block/push* 4
            word/push ~none!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx152 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk154: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx155: _context/make blk154 yes
            stack/mark-native ~append
            blk156: block/push* 4
            word/push ~op!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx155 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk157: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx158: _context/make blk157 yes
            stack/mark-native ~append
            blk159: block/push* 4
            word/push ~paren!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx158 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk160: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx161: _context/make blk160 yes
            stack/mark-native ~append
            blk162: block/push* 4
            word/push ~path!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx161 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk163: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx164: _context/make blk163 yes
            stack/mark-native ~append
            blk165: block/push* 4
            word/push ~refinement!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx164 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk166: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx167: _context/make blk166 yes
            stack/mark-native ~append
            blk168: block/push* 4
            word/push ~set-path!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx167 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk169: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx170: _context/make blk169 yes
            stack/mark-native ~append
            blk171: block/push* 4
            word/push ~set-word!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx170 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk172: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx173: _context/make blk172 yes
            stack/mark-native ~append
            blk174: block/push* 4
            word/push ~string!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx173 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk175: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx176: _context/make blk175 yes
            stack/mark-native ~append
            blk177: block/push* 4
            word/push ~unset!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx176 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk178: block/push* 3
            tmp: string/load "Returns true if the value is this type." 40
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~any-type!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx179: _context/make blk178 yes
            stack/mark-native ~append
            blk180: block/push* 4
            word/push ~word!
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            word/push ~type?
            block/append*
            stack/keep
            get-word/push-local ctx179 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk181: block/push* 1
            word/push ~value
            block/append*
            stack/unwind
            ctx182: _context/make blk181 yes
            stack/mark-native ~append
            blk183: block/push* 4
            word/push ~find
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 8
            word/push ~block!
            block/append*
            stack/keep
            word/push ~paren!
            block/append*
            stack/keep
            word/push ~path!
            block/append*
            stack/keep
            word/push ~lit-path!
            block/append*
            stack/keep
            word/push ~set-path!
            block/append*
            stack/keep
            word/push ~get-path!
            block/append*
            stack/keep
            word/push ~string!
            block/append*
            stack/keep
            word/push ~file!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            path/push* 2
            word/push ~type?
            block/append*
            stack/keep
            word/push ~word
            block/append*
            stack/unwind
            block/append*
            stack/keep
            get-word/push-local ctx182 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk184: block/push* 2
            tmp: string/load {Returns the spec of a value that supports reflection.} 54
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/unwind
            ctx185: _context/make blk184 yes
            stack/mark-native ~append
            blk186: block/push* 3
            word/push ~reflect
            block/append*
            stack/keep
            get-word/push-local ctx185 0
            block/append*
            stack/keep
            lit-word/push ~spec
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk187: block/push* 2
            tmp: string/load {Returns the body of a value that supports reflection.} 54
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/unwind
            ctx188: _context/make blk187 yes
            stack/mark-native ~append
            blk189: block/push* 3
            word/push ~reflect
            block/append*
            stack/keep
            get-word/push-local ctx188 0
            block/append*
            stack/keep
            lit-word/push ~body
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk190: block/push* 7
            tmp: string/load "Returns information about the interpreter." 43
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~version
            block/append*
            stack/keep
            tmp: string/load "Return the system version" 26
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~words
            block/append*
            stack/keep
            tmp: string/load "Return a block of global words available" 41
            string/push
            tmp
            block/append*
            stack/keep
            refinement/push ~platform
            block/append*
            stack/keep
            tmp: string/load "Return a word identifying the operating system" 47
            string/push
            tmp
            block/append*
            stack/unwind
            ctx191: _context/make blk190 yes
            stack/mark-native ~append
            blk192: block/push* 2
            word/push ~case
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 8
            word/push-local ctx191 0
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            issue/push ~version
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push-local ctx191 1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            issue/push ~system
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            stack/mark-native ~append
            path/push* 2
            word/push ~_context
            block/append*
            stack/keep
            word/push ~get-words
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            word/push-local ctx191 2
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            issue/push ~system
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 3
            issue/push ~switch
            block/append*
            stack/keep
            word/push ~OS
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 8
            word/push ~Windows
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~SET_RETURN
            block/append*
            stack/keep
            stack/mark-native ~append
            paren/push* 1
            stack/mark-native ~append
            path/push* 2
            word/push-local ctx191 1
            block/append*
            stack/keep
            word/push ~_windows
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            word/push ~Syllable
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~SET_RETURN
            block/append*
            stack/keep
            stack/mark-native ~append
            paren/push* 1
            stack/mark-native ~append
            path/push* 2
            word/push-local ctx191 1
            block/append*
            stack/keep
            word/push ~_syllable
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            word/push ~MacOSX
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~SET_RETURN
            block/append*
            stack/keep
            stack/mark-native ~append
            paren/push* 1
            stack/mark-native ~append
            path/push* 2
            word/push-local ctx191 1
            block/append*
            stack/keep
            word/push ~_macosx
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            issue/push ~default
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~SET_RETURN
            block/append*
            stack/keep
            stack/mark-native ~append
            paren/push* 1
            stack/mark-native ~append
            path/push* 2
            word/push-local ctx191 1
            block/append*
            stack/keep
            word/push ~_linux
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            lit-word/push ~else
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~print
            block/append*
            stack/keep
            tmp: string/load {Please specify a system refinement value (/version, /words, or /platform).} 75
            string/push
            tmp
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            stack/mark-native ~append
            blk193: block/push* 8
            word/push ~series
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~series!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~pattern
            block/append*
            stack/keep
            word/push ~value
            block/append*
            stack/keep
            refinement/push ~all
            block/append*
            stack/keep
            refinement/push ~local
            block/append*
            stack/keep
            word/push ~pos
            block/append*
            stack/keep
            word/push ~len
            block/append*
            stack/unwind
            ctx194: _context/make blk193 yes
            stack/mark-native ~append
            blk195: block/push* 11
            set-word/push-local ctx194 6
            block/append*
            stack/keep
            word/push ~either
            block/append*
            stack/keep
            word/push ~any-series?
            block/append*
            stack/keep
            get-word/push-local ctx194 1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~length?
            block/append*
            stack/keep
            word/push-local ctx194 1
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            integer/push 1
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~either
            block/append*
            stack/keep
            word/push-local ctx194 3
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 7
            set-word/push-local ctx194 5
            block/append*
            stack/keep
            word/push-local ctx194 0
            block/append*
            stack/keep
            word/push ~either
            block/append*
            stack/keep
            word/push ~any-series?
            block/append*
            stack/keep
            get-word/push-local ctx194 1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 3
            word/push ~while
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 4
            set-word/push-local ctx194 5
            block/append*
            stack/keep
            word/push ~find
            block/append*
            stack/keep
            word/push-local ctx194 5
            block/append*
            stack/keep
            word/push-local ctx194 1
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 7
            stack/mark-native ~append
            path/push* 2
            word/push ~remove
            block/append*
            stack/keep
            word/push ~part
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push-local ctx194 5
            block/append*
            stack/keep
            word/push-local ctx194 6
            block/append*
            stack/keep
            set-word/push-local ctx194 5
            block/append*
            stack/keep
            word/push ~insert
            block/append*
            stack/keep
            word/push-local ctx194 5
            block/append*
            stack/keep
            word/push-local ctx194 2
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 3
            word/push ~while
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 4
            set-word/push-local ctx194 5
            block/append*
            stack/keep
            word/push ~find
            block/append*
            stack/keep
            word/push-local ctx194 5
            block/append*
            stack/keep
            word/push-local ctx194 1
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            stack/mark-native ~append
            set-path/push* 2
            word/push-local ctx194 5
            block/append*
            stack/keep
            integer/push 1
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push-local ctx194 2
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 6
            word/push ~if
            block/append*
            stack/keep
            set-word/push-local ctx194 5
            block/append*
            stack/keep
            word/push ~find
            block/append*
            stack/keep
            word/push-local ctx194 0
            block/append*
            stack/keep
            word/push-local ctx194 1
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 6
            stack/mark-native ~append
            path/push* 2
            word/push ~remove
            block/append*
            stack/keep
            word/push ~part
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push-local ctx194 5
            block/append*
            stack/keep
            word/push-local ctx194 6
            block/append*
            stack/keep
            word/push ~insert
            block/append*
            stack/keep
            word/push-local ctx194 5
            block/append*
            stack/keep
            word/push-local ctx194 2
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            word/push-local ctx194 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk196: block/push* 2
            word/push ~value
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~number!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx197: _context/make blk196 yes
            stack/mark-native ~append
            blk198: block/push* 3
            word/push-local ctx197 0
            block/append*
            stack/keep
            word/push ~=
            block/append*
            stack/keep
            integer/push 0
            block/append*
            stack/unwind
            str199: string/load "hello" 6
            stack/mark-native ~append
            blk200: block/push* 3
            tmp: string/load "aa" 3
            string/push
            tmp
            block/append*
            stack/keep
            tmp: string/load "bb" 3
            string/push
            tmp
            block/append*
            stack/keep
            integer/push 222
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk201: block/push* 10
            word/push ~n
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~s
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~string!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push ~return
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~local
            block/append*
            stack/keep
            word/push ~i
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~m
            block/append*
            stack/unwind
            ctx202: _context/make blk201 yes
            stack/mark-native ~append
            blk203: block/push* 19
            set-word/push-local ctx202 3
            block/append*
            stack/keep
            integer/push 2
            block/append*
            stack/keep
            word/push ~print
            block/append*
            stack/keep
            word/push-local ctx202 1
            block/append*
            stack/keep
            set-word/push-local ctx202 1
            block/append*
            stack/keep
            word/push ~append
            block/append*
            stack/keep
            word/push-local ctx202 1
            block/append*
            stack/keep
            tmp: string/load " world" 7
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push-local ctx202 0
            block/append*
            stack/keep
            word/push-local ctx202 0
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            integer/push 3
            block/append*
            stack/keep
            set-word/push-local ctx202 4
            block/append*
            stack/keep
            word/push ~j
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            word/push-local ctx202 0
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            word/push-local ctx202 3
            block/append*
            stack/keep
            word/push-local ctx202 4
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk204: block/push* 4
            word/push ~i
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~local
            block/append*
            stack/keep
            word/push ~f1
            block/append*
            stack/unwind
            ctx205: _context/make blk204 yes
            stack/mark-native ~append
            blk206: block/push* 10
            set-word/push-local ctx205 2
            block/append*
            stack/keep
            word/push ~function
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~j
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 3
            word/push ~j
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            integer/push 2
            block/append*
            stack/unwind
            block/append*
            stack/keep
            set-word/push-local ctx205 0
            block/append*
            stack/keep
            word/push-local ctx205 0
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            integer/push 1
            block/append*
            stack/keep
            word/push-local ctx205 2
            block/append*
            stack/keep
            word/push-local ctx205 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk207: block/push* 5
            word/push ~i
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~local
            block/append*
            stack/keep
            word/push ~loc
            block/append*
            stack/keep
            word/push ~inner
            block/append*
            stack/unwind
            ctx208: _context/make blk207 yes
            stack/mark-native ~append
            blk209: block/push* 8
            set-word/push-local ctx208 2
            block/append*
            stack/keep
            integer/push 0
            block/append*
            stack/keep
            set-word/push-local ctx208 3
            block/append*
            stack/keep
            word/push ~function
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~j
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 4
            set-word/push-local ctx208 2
            block/append*
            stack/keep
            word/push-local ctx208 2
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            word/push ~j
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push-local ctx208 3
            block/append*
            stack/keep
            word/push-local ctx208 0
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk210: block/push* 8
            set-word/push ~name
            block/append*
            stack/keep
            tmp: string/load "Red Programming Language" 25
            string/push
            tmp
            block/append*
            stack/keep
            set-word/push ~fun
            block/append*
            stack/keep
            word/push ~function
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 2
            word/push ~name
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~string!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 4
            word/push ~print
            block/append*
            stack/keep
            word/push ~append
            block/append*
            stack/keep
            tmp: string/load "hello, " 8
            string/push
            tmp
            block/append*
            stack/keep
            word/push ~name
            block/append*
            stack/unwind
            block/append*
            stack/keep
            word/push ~fun
            block/append*
            stack/keep
            word/push ~name
            block/append*
            stack/unwind
            str211: string/load "print s" 8
            str212: string/load ": " 3
            stack/mark-native ~append
            blk213: block/push* 8
            word/push ~block!
            block/append*
            stack/keep
            word/push ~paren!
            block/append*
            stack/keep
            word/push ~path!
            block/append*
            stack/keep
            word/push ~lit-path!
            block/append*
            stack/keep
            word/push ~set-path!
            block/append*
            stack/keep
            word/push ~get-path!
            block/append*
            stack/keep
            word/push ~string!
            block/append*
            stack/keep
            word/push ~file!
            block/append*
            stack/unwind
            str214: string/load "0.4.0, 23-Apr-2018/0:13:36+8:00" 32
            str215: string/load {Please specify a system refinement value (/version, /words, or /platform).} 75
            str216: string/load " world" 7
            stack/mark-native ~append
            blk217: block/push* 2
            word/push ~j
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            stack/unwind
            ctx218: _context/make blk217 yes
            stack/mark-native ~append
            blk219: block/push* 3
            word/push-local ctx218 0
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            integer/push 2
            block/append*
            stack/unwind
            stack/mark-native ~append
            blk220: block/push* 4
            word/push ~j
            block/append*
            stack/keep
            stack/mark-native ~append
            block/push* 1
            word/push ~integer!
            block/append*
            stack/unwind
            block/append*
            stack/keep
            refinement/push ~local
            block/append*
            stack/keep
            word/push ~loc
            block/append*
            stack/unwind
            ctx221: _context/make blk220 yes
            stack/mark-native ~append
            blk222: block/push* 4
            set-word/push-local ctx221 2
            block/append*
            stack/keep
            word/push-local ctx221 2
            block/append*
            stack/keep
            word/push ~+
            block/append*
            stack/keep
            word/push-local ctx221 0
            block/append*
            stack/unwind
            ------------| "Declarations"
            r_arg: (as red-value! 0)
            ------------| "Functions"
            f_quit: func [/local ~return ~status] [
                push ctx77/values
                ctx77/values: as node! stack/arguments
                ~return: stack/arguments
                ~status: ~return + 1
                stack/mark-native ~quit
                stack/reset
                stack/mark-native ~quit-return
                stack/mark-native ~any
                stack/push ~status
                ------------| "status"
                if logic/false? [
                    stack/reset
                    integer/push 0
                    ------------| "0"
                    if logic/false? [stack/reset none/push-last]
                ]
                stack/unwind
                r_arg: stack/arguments
                quit-return integer/get r_arg
                stack/unwind
                ------------| "quit-return any [status 0]"
                stack/unwind-last
                ctx77/values: as node! pop
            ]
            f_empty?: func [/local ~series] [
                push ctx80/values
                ctx80/values: as node! stack/arguments
                ~series: stack/arguments
                stack/mark-native ~empty?
                stack/reset
                stack/mark-native ~tail?
                stack/push ~series
                actions/tail?*
                stack/unwind
                ------------| "tail? series"
                stack/unwind-last
                ctx80/values: as node! pop
            ]
            f_??: func [/local ~value] [
                push ctx83/values
                ctx83/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~??
                stack/reset
                stack/mark-native ~prin
                stack/mark-native ~mold
                stack/push ~value
                actions/mold* -1 -1 -1 -1
                stack/unwind
                natives/prin*
                stack/unwind
                stack/reset
                ------------| "prin mold :value"
                stack/mark-native ~prin
                string/push str212
                natives/prin*
                stack/unwind
                stack/reset
                ------------| {prin ": "}
                stack/mark-func ~probe
                stack/mark-native ~get
                stack/push ~value
                natives/get* -1
                stack/unwind
                f_probe
                stack/unwind
                ------------| "probe get/any :value"
                stack/unwind-last
                ctx83/values: as node! pop
            ]
            f_probe: func [/local ~value] [
                push ctx86/values
                ctx86/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~probe
                stack/reset
                stack/mark-native ~print
                stack/mark-native ~mold
                stack/push ~value
                actions/mold* -1 -1 -1 -1
                stack/unwind
                natives/print*
                stack/unwind
                stack/reset
                ------------| "print mold value"
                stack/push ~value
                ------------| "value"
                stack/unwind-last
                ctx86/values: as node! pop
            ]
            f_quote: func [/local ~value] [
                push ctx89/values
                ctx89/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~quote
                stack/reset
                stack/push ~value
                ------------| ":value"
                stack/unwind-last
                ctx89/values: as node! pop
            ]
            f_first: func [/local ~s] [
                push ctx92/values
                ctx92/values: as node! stack/arguments
                ~s: stack/arguments
                stack/mark-native ~first
                stack/reset
                stack/mark-native ~pick
                stack/push ~s
                integer/push 1
                actions/pick*
                stack/unwind
                ------------| "pick s 1"
                stack/unwind-last
                ctx92/values: as node! pop
            ]
            f_second: func [/local ~s] [
                push ctx95/values
                ctx95/values: as node! stack/arguments
                ~s: stack/arguments
                stack/mark-native ~second
                stack/reset
                stack/mark-native ~pick
                stack/push ~s
                integer/push 2
                actions/pick*
                stack/unwind
                ------------| "pick s 2"
                stack/unwind-last
                ctx95/values: as node! pop
            ]
            f_third: func [/local ~s] [
                push ctx98/values
                ctx98/values: as node! stack/arguments
                ~s: stack/arguments
                stack/mark-native ~third
                stack/reset
                stack/mark-native ~pick
                stack/push ~s
                integer/push 3
                actions/pick*
                stack/unwind
                ------------| "pick s 3"
                stack/unwind-last
                ctx98/values: as node! pop
            ]
            f_fourth: func [/local ~s] [
                push ctx101/values
                ctx101/values: as node! stack/arguments
                ~s: stack/arguments
                stack/mark-native ~fourth
                stack/reset
                stack/mark-native ~pick
                stack/push ~s
                integer/push 4
                actions/pick*
                stack/unwind
                ------------| "pick s 4"
                stack/unwind-last
                ctx101/values: as node! pop
            ]
            f_fifth: func [/local ~s] [
                push ctx104/values
                ctx104/values: as node! stack/arguments
                ~s: stack/arguments
                stack/mark-native ~fifth
                stack/reset
                stack/mark-native ~pick
                stack/push ~s
                integer/push 5
                actions/pick*
                stack/unwind
                ------------| "pick s 5"
                stack/unwind-last
                ctx104/values: as node! pop
            ]
            f_last: func [/local ~s] [
                push ctx107/values
                ctx107/values: as node! stack/arguments
                ~s: stack/arguments
                stack/mark-native ~last
                stack/reset
                stack/mark-native ~pick
                stack/mark-native ~back
                stack/mark-native ~tail
                stack/push ~s
                actions/tail*
                stack/unwind
                actions/back*
                stack/unwind
                integer/push 1
                actions/pick*
                stack/unwind
                ------------| "pick back tail s 1"
                stack/unwind-last
                ctx107/values: as node! pop
            ]
            f_action?: func [/local ~value] [
                push ctx110/values
                ctx110/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~action?
                stack/reset
                stack/mark-native ~equal?
                word/get ~action!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "action! = type? :value"
                stack/unwind-last
                ctx110/values: as node! pop
            ]
            f_block?: func [/local ~value] [
                push ctx113/values
                ctx113/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~block?
                stack/reset
                stack/mark-native ~equal?
                word/get ~block!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "block! = type? :value"
                stack/unwind-last
                ctx113/values: as node! pop
            ]
            f_char?: func [/local ~value] [
                push ctx116/values
                ctx116/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~char?
                stack/reset
                stack/mark-native ~equal?
                word/get ~char!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "char! = type? :value"
                stack/unwind-last
                ctx116/values: as node! pop
            ]
            f_datatype?: func [/local ~value] [
                push ctx119/values
                ctx119/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~datatype?
                stack/reset
                stack/mark-native ~equal?
                word/get ~datatype!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "datatype! = type? :value"
                stack/unwind-last
                ctx119/values: as node! pop
            ]
            f_file?: func [/local ~value] [
                push ctx122/values
                ctx122/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~file?
                stack/reset
                stack/mark-native ~equal?
                word/get ~file!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "file! = type? :value"
                stack/unwind-last
                ctx122/values: as node! pop
            ]
            f_function?: func [/local ~value] [
                push ctx125/values
                ctx125/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~function?
                stack/reset
                stack/mark-native ~equal?
                word/get ~function!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "function! = type? :value"
                stack/unwind-last
                ctx125/values: as node! pop
            ]
            f_get-path?: func [/local ~value] [
                push ctx128/values
                ctx128/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~get-path?
                stack/reset
                stack/mark-native ~equal?
                word/get ~get-path!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "get-path! = type? :value"
                stack/unwind-last
                ctx128/values: as node! pop
            ]
            f_get-word?: func [/local ~value] [
                push ctx131/values
                ctx131/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~get-word?
                stack/reset
                stack/mark-native ~equal?
                word/get ~get-word!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "get-word! = type? :value"
                stack/unwind-last
                ctx131/values: as node! pop
            ]
            f_integer?: func [/local ~value] [
                push ctx134/values
                ctx134/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~integer?
                stack/reset
                stack/mark-native ~equal?
                word/get ~integer!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "integer! = type? :value"
                stack/unwind-last
                ctx134/values: as node! pop
            ]
            f_issue?: func [/local ~value] [
                push ctx137/values
                ctx137/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~issue?
                stack/reset
                stack/mark-native ~equal?
                word/get ~issue!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "issue! = type? :value"
                stack/unwind-last
                ctx137/values: as node! pop
            ]
            f_lit-path?: func [/local ~value] [
                push ctx140/values
                ctx140/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~lit-path?
                stack/reset
                stack/mark-native ~equal?
                word/get ~lit-path!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "lit-path! = type? :value"
                stack/unwind-last
                ctx140/values: as node! pop
            ]
            f_lit-word?: func [/local ~value] [
                push ctx143/values
                ctx143/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~lit-word?
                stack/reset
                stack/mark-native ~equal?
                word/get ~lit-word!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "lit-word! = type? :value"
                stack/unwind-last
                ctx143/values: as node! pop
            ]
            f_logic?: func [/local ~value] [
                push ctx146/values
                ctx146/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~logic?
                stack/reset
                stack/mark-native ~equal?
                word/get ~logic!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "logic! = type? :value"
                stack/unwind-last
                ctx146/values: as node! pop
            ]
            f_native?: func [/local ~value] [
                push ctx149/values
                ctx149/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~native?
                stack/reset
                stack/mark-native ~equal?
                word/get ~native!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "native! = type? :value"
                stack/unwind-last
                ctx149/values: as node! pop
            ]
            f_none?: func [/local ~value] [
                push ctx152/values
                ctx152/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~none?
                stack/reset
                stack/mark-native ~equal?
                word/get ~none!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "none! = type? :value"
                stack/unwind-last
                ctx152/values: as node! pop
            ]
            f_op?: func [/local ~value] [
                push ctx155/values
                ctx155/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~op?
                stack/reset
                stack/mark-native ~equal?
                word/get ~op!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "op! = type? :value"
                stack/unwind-last
                ctx155/values: as node! pop
            ]
            f_paren?: func [/local ~value] [
                push ctx158/values
                ctx158/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~paren?
                stack/reset
                stack/mark-native ~equal?
                word/get ~paren!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "paren! = type? :value"
                stack/unwind-last
                ctx158/values: as node! pop
            ]
            f_path?: func [/local ~value] [
                push ctx161/values
                ctx161/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~path?
                stack/reset
                stack/mark-native ~equal?
                word/get ~path!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "path! = type? :value"
                stack/unwind-last
                ctx161/values: as node! pop
            ]
            f_refinement?: func [/local ~value] [
                push ctx164/values
                ctx164/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~refinement?
                stack/reset
                stack/mark-native ~equal?
                word/get ~refinement!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "refinement! = type? :value"
                stack/unwind-last
                ctx164/values: as node! pop
            ]
            f_set-path?: func [/local ~value] [
                push ctx167/values
                ctx167/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~set-path?
                stack/reset
                stack/mark-native ~equal?
                word/get ~set-path!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "set-path! = type? :value"
                stack/unwind-last
                ctx167/values: as node! pop
            ]
            f_set-word?: func [/local ~value] [
                push ctx170/values
                ctx170/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~set-word?
                stack/reset
                stack/mark-native ~equal?
                word/get ~set-word!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "set-word! = type? :value"
                stack/unwind-last
                ctx170/values: as node! pop
            ]
            f_string?: func [/local ~value] [
                push ctx173/values
                ctx173/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~string?
                stack/reset
                stack/mark-native ~equal?
                word/get ~string!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "string! = type? :value"
                stack/unwind-last
                ctx173/values: as node! pop
            ]
            f_unset?: func [/local ~value] [
                push ctx176/values
                ctx176/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~unset?
                stack/reset
                stack/mark-native ~equal?
                word/get ~unset!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "unset! = type? :value"
                stack/unwind-last
                ctx176/values: as node! pop
            ]
            f_word?: func [/local ~value] [
                push ctx179/values
                ctx179/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~word?
                stack/reset
                stack/mark-native ~equal?
                word/get ~word!
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* -1
                stack/unwind
                natives/equal?*
                stack/unwind
                ------------| "word! = type? :value"
                stack/unwind-last
                ctx179/values: as node! pop
            ]
            f_any-series?: func [/local ~value] [
                push ctx182/values
                ctx182/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~any-series?
                stack/reset
                stack/mark-native ~find
                block/push blk213
                stack/mark-native ~type?
                stack/push ~value
                natives/type?* 1
                stack/unwind
                actions/find* -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
                stack/unwind
                ------------| {find [block! paren! path! lit-path! set-path! get-...}
                stack/unwind-last
                ctx182/values: as node! pop
            ]
            f_spec-of: func [/local ~value] [
                push ctx185/values
                ctx185/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~spec-of
                stack/reset
                stack/mark-native ~reflect
                stack/push ~value
                word/push ~spec
                actions/reflect*
                stack/unwind
                ------------| "reflect :value 'spec"
                stack/unwind-last
                ctx185/values: as node! pop
            ]
            f_body-of: func [/local ~value] [
                push ctx188/values
                ctx188/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~body-of
                stack/reset
                stack/mark-native ~reflect
                stack/push ~value
                word/push ~body
                actions/reflect*
                stack/unwind
                ------------| "reflect :value 'body"
                stack/unwind-last
                ctx188/values: as node! pop
            ]
            f_system: func [/local ~version ~words ~platform] [
                push ctx191/values
                ctx191/values: as node! stack/arguments
                ~version: stack/arguments
                ~words: ~version + 1
                ~platform: ~words + 1
                stack/mark-native ~system
                stack/reset
                stack/mark-native ~case
                stack/push ~version
                either logic/true? [
                    stack/reset
                    stack/reset
                    ------------| {"0.4.0, 23-Apr-2018/0:13:36+8:00"}
                    string/push str214
                    ------------| {"0.4.0, 23-Apr-2018/0:13:36+8:00"}
                ] [
                    stack/reset
                    stack/push ~words
                    either logic/true? [
                        stack/reset
                        _context/get-words
                        ------------| "#system [_context/get-words]"
                    ] [
                        stack/reset
                        stack/push ~platform
                        either logic/true? [
                            stack/reset
                            #switch OS [Windows [SET_RETURN (words/_windows)] Syllable [SET_RETURN (words/_syllable)] MacOSX [SET_RETURN (words/_macosx)] #default [SET_RETURN (words/_linux)]]
                            ------------| {#system [#switch OS [Windows [SET_RETURN (words/_w...}
                        ] [
                            stack/reset
                            word/push ~else
                            either logic/true? [
                                stack/reset
                                stack/mark-native ~print
                                string/push str215
                                natives/print*
                                stack/unwind
                                ------------| {print ^{Please specify a system refinement value (/...}
                            ] [stack/reset none/push-last]
                        ]
                    ]
                ]
                stack/unwind
                ------------| {case [version ["0.4.0, 23-Apr-2018/0:13:36+8:00"] ...}
                stack/unwind-last
                ctx191/values: as node! pop
            ]
            f_replace: func [/local ~series ~pattern ~value ~all ~local ~pos ~len] [
                push ctx194/values
                ctx194/values: as node! stack/arguments
                ~series: stack/arguments
                ~pattern: ~series + 1
                ~value: ~pattern + 1
                ~all: ~value + 1
                ~local: ~all + 1
                ~pos: ~local + 1
                ~len: ~pos + 1
                _function/init-locals 3
                stack/mark-native ~replace
                stack/reset
                stack/mark-native ~set
                stack/mark-native ~either
                stack/mark-func ~any-series?
                stack/push ~pattern
                f_any-series?
                stack/unwind
                either logic/true? [
                    stack/reset
                    stack/mark-native ~length?
                    stack/push ~pattern
                    actions/length?*
                    stack/unwind
                    ------------| "length? pattern"
                ] [
                    stack/reset
                    stack/reset
                    integer/push 1
                    stack/keep
                    ------------| "1"
                ]
                stack/unwind
                word/set-local ~len
                stack/unwind
                stack/reset
                ------------| {len: either any-series? :pattern [length? pattern]...}
                stack/mark-native ~either
                stack/push ~all
                either logic/true? [
                    stack/reset
                    stack/mark-native ~set
                    stack/push ~series
                    word/set-local ~pos
                    stack/unwind
                    stack/reset
                    ------------| "pos: series"
                    stack/mark-native ~either
                    stack/mark-func ~any-series?
                    stack/push ~pattern
                    f_any-series?
                    stack/unwind
                    either logic/true? [
                        stack/reset
                        while [
                            stack/reset
                            stack/mark-native ~set
                            stack/mark-native ~find
                            stack/push ~pos
                            stack/push ~pattern
                            actions/find* -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
                            stack/unwind
                            word/set-local ~pos
                            stack/unwind
                            ------------| "pos: find pos pattern"
                            logic/true?
                        ] [
                            stack/reset
                            stack/mark-native ~remove
                            stack/push ~pos
                            stack/push ~len
                            actions/remove* 1
                            stack/unwind
                            stack/reset
                            ------------| "remove/part pos len"
                            stack/mark-native ~set
                            stack/mark-native ~insert
                            stack/push ~pos
                            stack/push ~value
                            actions/insert* -1 -1 -1
                            stack/unwind
                            word/set-local ~pos
                            stack/unwind
                            ------------| "pos: insert pos value"
                        ]
                        ------------| {while [pos: find pos pattern] [remove/part pos len...}
                    ] [
                        stack/reset
                        while [
                            stack/reset
                            stack/mark-native ~set
                            stack/mark-native ~find
                            stack/push ~pos
                            stack/push ~pattern
                            actions/find* -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
                            stack/unwind
                            word/set-local ~pos
                            stack/unwind
                            ------------| "pos: find pos pattern"
                            logic/true?
                        ] [
                            stack/reset
                            stack/mark-native ~poke
                            stack/push ~pos
                            integer/push 1
                            stack/push ~value
                            actions/poke*
                            stack/unwind
                            ------------| "pos/1: value"
                        ]
                        ------------| "while [pos: find pos pattern] [pos/1: value]"
                    ]
                    stack/unwind
                    ------------| {either any-series? :pattern [while [pos: find pos ...}
                ] [
                    stack/reset
                    stack/mark-native ~if
                    stack/mark-native ~set
                    stack/mark-native ~find
                    stack/push ~series
                    stack/push ~pattern
                    actions/find* -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
                    stack/unwind
                    word/set-local ~pos
                    stack/unwind
                    either logic/false? [stack/reset none/push-last] [
                        stack/reset
                        stack/mark-native ~remove
                        stack/push ~pos
                        stack/push ~len
                        actions/remove* 1
                        stack/unwind
                        stack/reset
                        ------------| "remove/part pos len"
                        stack/mark-native ~insert
                        stack/push ~pos
                        stack/push ~value
                        actions/insert* -1 -1 -1
                        stack/unwind
                        ------------| "insert pos value"
                    ]
                    stack/unwind
                    ------------| {if pos: find series pattern [remove/part pos len i...}
                ]
                stack/unwind
                stack/reset
                ------------| {either all [pos: series either any-series? :patter...}
                stack/push ~series
                ------------| "series"
                stack/unwind-last
                ctx194/values: as node! pop
            ]
            f_zero?: func [/local ~value] [
                push ctx197/values
                ctx197/values: as node! stack/arguments
                ~value: stack/arguments
                stack/mark-native ~zero?
                stack/reset
                stack/mark-native ~equal?
                stack/push ~value
                integer/push 0
                natives/equal?*
                stack/unwind
                ------------| "value = 0"
                stack/unwind-last
                ctx197/values: as node! pop
            ]
            f_f: func [/local ~n ~s ~local ~i ~m] [
                push ctx202/values
                ctx202/values: as node! stack/arguments
                ~n: stack/arguments
                ~s: ~n + 1
                ~local: ~s + 1
                ~i: ~local + 1
                ~m: ~i + 1
                _function/init-locals 3
                stack/mark-native ~f
                stack/reset
                stack/mark-native ~set
                integer/push 2
                word/set-local ~i
                stack/unwind
                stack/reset
                ------------| "i: 2"
                stack/mark-native ~print
                stack/push ~s
                natives/print*
                stack/unwind
                stack/reset
                ------------| "print s"
                stack/mark-native ~set
                stack/mark-native ~append
                stack/push ~s
                string/push str216
                actions/append* -1 -1 -1
                stack/unwind
                word/set-local ~s
                stack/unwind
                stack/reset
                ------------| {s: append s " world"}
                stack/mark-native ~set
                stack/mark-native ~add
                stack/push ~n
                integer/push 3
                actions/add*
                stack/unwind
                word/set-local ~n
                stack/unwind
                stack/reset
                ------------| "n: n + 3"
                stack/mark-native ~set
                stack/mark-native ~add
                stack/mark-native ~add
                word/get ~j
                stack/push ~n
                actions/add*
                stack/unwind
                stack/push ~i
                actions/add*
                stack/unwind
                word/set-local ~m
                stack/unwind
                stack/reset
                ------------| "m: j + n + i"
                stack/push ~m
                ------------| "m"
                stack/unwind-last
                ctx202/values: as node! pop
            ]
            f_fn: func [/local ~i ~local ~f1] [
                push ctx205/values
                ctx205/values: as node! stack/arguments
                ~i: stack/arguments
                ~local: ~i + 1
                ~f1: ~local + 1
                _function/init-locals 2
                stack/mark-native ~fn
                stack/reset
                stack/mark-native ~set
                word/push-local ctx218 2
                _function/push blk217 blk219 ctx218 as integer! :f_f1
                word/set
                stack/unwind
                stack/reset
                ------------| "f1: function [j [integer!]] [j + 2]"
                stack/mark-native ~set
                stack/mark-native ~add
                stack/push ~i
                integer/push 1
                actions/add*
                stack/unwind
                word/set-local ~i
                stack/unwind
                stack/reset
                ------------| "i: i + 1"
                stack/push ~f1
                stack/reset
                ------------| "f1"
                stack/push ~i
                ------------| "i"
                stack/unwind-last
                ctx205/values: as node! pop
            ]
            f_fc: func [/local ~i ~local ~loc ~inner] [
                push ctx208/values
                ctx208/values: as node! stack/arguments
                ~i: stack/arguments
                ~local: ~i + 1
                ~loc: ~local + 1
                ~inner: ~loc + 1
                _function/init-locals 3
                stack/mark-native ~fc
                stack/reset
                stack/mark-native ~set
                integer/push 0
                word/set-local ~loc
                stack/unwind
                stack/reset
                ------------| "loc: 0"
                stack/mark-native ~set
                word/push-local ctx221 3
                _function/push blk220 blk222 ctx221 as integer! :f_inner
                word/set
                stack/unwind
                stack/reset
                ------------| {inner: function [j [integer!] /local loc] [loc: lo...}
                stack/push ~inner
                stack/reset
                ------------| "inner"
                stack/push ~i
                ------------| "i"
                stack/unwind-last
                ctx208/values: as node! pop
            ]
            f_f1: func [/local ~j] [
                push ctx218/values
                ctx218/values: as node! stack/arguments
                ~j: stack/arguments
                stack/mark-native ~f1
                stack/reset
                stack/mark-native ~add
                stack/push ~j
                integer/push 2
                actions/add*
                stack/unwind
                ------------| "j + 2"
                stack/unwind-last
                ctx218/values: as node! pop
            ]
            f_inner: func [/local ~j ~local ~loc] [
                push ctx221/values
                ctx221/values: as node! stack/arguments
                ~j: stack/arguments
                ~local: ~j + 1
                ~loc: ~local + 1
                _function/init-locals 2
                stack/mark-native ~inner
                stack/reset
                stack/mark-native ~set
                stack/mark-native ~add
                stack/push ~loc
                stack/push ~j
                actions/add*
                stack/unwind
                word/set-local ~loc
                stack/unwind
                ------------| "loc: loc + j"
                stack/unwind-last
                ctx221/values: as node! pop
            ]
            ------------| "Main program"
            stack/mark-native ~set
            word/push ~datatype!
            datatype/push TYPE_DATATYPE
            word/set
            stack/unwind
            stack/reset
            stack/mark-native ~set
            word/push ~unset!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 2
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "unset!: make datatype! 2"
            stack/mark-native ~set
            word/push ~none!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 3
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "none!: make datatype! 3"
            stack/mark-native ~set
            word/push ~logic!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 4
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "logic!: make datatype! 4"
            stack/mark-native ~set
            word/push ~block!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 5
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "block!: make datatype! 5"
            stack/mark-native ~set
            word/push ~string!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 6
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "string!: make datatype! 6"
            stack/mark-native ~set
            word/push ~integer!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 7
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "integer!: make datatype! 7"
            stack/mark-native ~set
            word/push ~word!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 10
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "word!: make datatype! 10"
            stack/mark-native ~set
            word/push ~error!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 29
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "error!: make datatype! 29"
            stack/mark-native ~set
            word/push ~typeset!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 28
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "typeset!: make datatype! 28"
            stack/mark-native ~set
            word/push ~file!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 27
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "file!: make datatype! 27"
            stack/mark-native ~set
            word/push ~set-word!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 11
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "set-word!: make datatype! 11"
            stack/mark-native ~set
            word/push ~get-word!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 13
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "get-word!: make datatype! 13"
            stack/mark-native ~set
            word/push ~lit-word!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 12
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "lit-word!: make datatype! 12"
            stack/mark-native ~set
            word/push ~refinement!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 14
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "refinement!: make datatype! 14"
            stack/mark-native ~set
            word/push ~binary!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 30
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "binary!: make datatype! 30"
            stack/mark-native ~set
            word/push ~paren!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 24
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "paren!: make datatype! 24"
            stack/mark-native ~set
            word/push ~char!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 15
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "char!: make datatype! 15"
            stack/mark-native ~set
            word/push ~issue!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 26
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "issue!: make datatype! 26"
            stack/mark-native ~set
            word/push ~path!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 20
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "path!: make datatype! 20"
            stack/mark-native ~set
            word/push ~set-path!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 22
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "set-path!: make datatype! 22"
            stack/mark-native ~set
            word/push ~get-path!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 23
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "get-path!: make datatype! 23"
            stack/mark-native ~set
            word/push ~lit-path!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 21
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "lit-path!: make datatype! 21"
            stack/mark-native ~set
            word/push ~native!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 16
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "native!: make datatype! 16"
            stack/mark-native ~set
            word/push ~action!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 17
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "action!: make datatype! 17"
            stack/mark-native ~set
            word/push ~op!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 18
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "op!: make datatype! 18"
            stack/mark-native ~set
            word/push ~function!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 19
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "function!: make datatype! 19"
            stack/mark-native ~set
            word/push ~closure!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 31
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "closure!: make datatype! 31"
            stack/mark-native ~set
            word/push ~routine!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 25
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "routine!: make datatype! 25"
            stack/mark-native ~set
            word/push ~object!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 32
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "object!: make datatype! 32"
            stack/mark-native ~set
            word/push ~port!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 33
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "port!: make datatype! 33"
            stack/mark-native ~set
            word/push ~bitset!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 34
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "bitset!: make datatype! 34"
            stack/mark-native ~set
            word/push ~float!
            stack/mark-native ~make
            word/get ~datatype!
            integer/push 35
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "float!: make datatype! 35"
            stack/mark-native ~set
            word/push ~none
            stack/mark-native ~make
            word/get ~none!
            integer/push 0
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "none: make none! 0"
            stack/mark-native ~set
            word/push ~true
            stack/mark-native ~make
            word/get ~logic!
            integer/push 1
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "true: make logic! 1"
            stack/mark-native ~set
            word/push ~false
            stack/mark-native ~make
            word/get ~logic!
            integer/push 0
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "false: make logic! 0"
            stack/mark-native ~set
            word/push ~make
            stack/mark-native ~make
            word/get ~action!
            block/push blk1
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {make: make action! [[^{Returns a new value made fro...}
            stack/mark-native ~set
            word/push ~reflect
            stack/mark-native ~make
            word/get ~action!
            block/push blk2
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {reflect: make action! [[^{Returns internal details ...}
            stack/mark-native ~set
            word/push ~form
            stack/mark-native ~make
            word/get ~action!
            block/push blk3
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {form: make action! [[^{Returns a user-friendly stri...}
            stack/mark-native ~set
            word/push ~mold
            stack/mark-native ~make
            word/get ~action!
            block/push blk4
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {mold: make action! [[^{Returns a source format stri...}
            stack/mark-native ~set
            word/push ~absolute
            stack/mark-native ~make
            word/get ~action!
            block/push blk5
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {absolute: make action! [["Returns the non-negative...}
            stack/mark-native ~set
            word/push ~add
            stack/mark-native ~make
            word/get ~action!
            block/push blk6
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {add: make action! [["Returns the sum of the two va...}
            stack/mark-native ~set
            word/push ~divide
            stack/mark-native ~make
            word/get ~action!
            block/push blk7
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {divide: make action! [["Returns the quotient of tw...}
            stack/mark-native ~set
            word/push ~multiply
            stack/mark-native ~make
            word/get ~action!
            block/push blk8
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {multiply: make action! [["Returns the product of t...}
            stack/mark-native ~set
            word/push ~negate
            stack/mark-native ~make
            word/get ~action!
            block/push blk9
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {negate: make action! [["Returns the opposite (addi...}
            stack/mark-native ~set
            word/push ~power
            stack/mark-native ~make
            word/get ~action!
            block/push blk10
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {power: make action! [[^{Returns a number raised to ...}
            stack/mark-native ~set
            word/push ~remainder
            stack/mark-native ~make
            word/get ~action!
            block/push blk11
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {remainder: make action! [[^{Returns what is left ov...}
            stack/mark-native ~set
            word/push ~round
            stack/mark-native ~make
            word/get ~action!
            block/push blk12
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {round: make action! [[^{TBD: Returns the nearest in...}
            stack/mark-native ~set
            word/push ~subtract
            stack/mark-native ~make
            word/get ~action!
            block/push blk13
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {subtract: make action! [["Returns the difference b...}
            stack/mark-native ~set
            word/push ~even?
            stack/mark-native ~make
            word/get ~action!
            block/push blk14
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {even?: make action! [[^{Returns true if the number ...}
            stack/mark-native ~set
            word/push ~odd?
            stack/mark-native ~make
            word/get ~action!
            block/push blk15
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {odd?: make action! [[^{Returns true if the number h...}
            stack/mark-native ~set
            word/push ~append
            stack/mark-native ~make
            word/get ~action!
            block/push blk16
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {append: make action! [[^{Inserts value(s) at series...}
            stack/mark-native ~set
            word/push ~at
            stack/mark-native ~make
            word/get ~action!
            block/push blk17
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {at: make action! [["Returns a series at a given in...}
            stack/mark-native ~set
            word/push ~back
            stack/mark-native ~make
            word/get ~action!
            block/push blk18
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {back: make action! [["Returns a series at the prev...}
            stack/mark-native ~set
            word/push ~clear
            stack/mark-native ~make
            word/get ~action!
            block/push blk19
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {clear: make action! [[^{Removes series values from ...}
            stack/mark-native ~set
            word/push ~copy
            stack/mark-native ~make
            word/get ~action!
            block/push blk20
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {copy: make action! [["Returns a copy of a non-scal...}
            stack/mark-native ~set
            word/push ~find
            stack/mark-native ~make
            word/get ~action!
            block/push blk21
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {find: make action! [[^{Returns the series where a v...}
            stack/mark-native ~set
            word/push ~head
            stack/mark-native ~make
            word/get ~action!
            block/push blk22
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {head: make action! [["Returns a series at its firs...}
            stack/mark-native ~set
            word/push ~head?
            stack/mark-native ~make
            word/get ~action!
            block/push blk23
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {head?: make action! [["Returns true if a series is...}
            stack/mark-native ~set
            word/push ~index?
            stack/mark-native ~make
            word/get ~action!
            block/push blk24
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {index?: make action! [[^{Returns the current series...}
            stack/mark-native ~set
            word/push ~insert
            stack/mark-native ~make
            word/get ~action!
            block/push blk25
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {insert: make action! [[^{Inserts value(s) at series...}
            stack/mark-native ~set
            word/push ~length?
            stack/mark-native ~make
            word/get ~action!
            block/push blk26
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {length?: make action! [[^{Returns the number of val...}
            stack/mark-native ~set
            word/push ~next
            stack/mark-native ~make
            word/get ~action!
            block/push blk27
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {next: make action! [["Returns a series at the next...}
            stack/mark-native ~set
            word/push ~pick
            stack/mark-native ~make
            word/get ~action!
            block/push blk28
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {pick: make action! [["Returns the series value at ...}
            stack/mark-native ~set
            word/push ~poke
            stack/mark-native ~make
            word/get ~action!
            block/push blk29
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {poke: make action! [[^{Replaces the series value at...}
            stack/mark-native ~set
            word/push ~remove
            stack/mark-native ~make
            word/get ~action!
            block/push blk30
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {remove: make action! [[^{Returns the series at the ...}
            stack/mark-native ~set
            word/push ~select
            stack/mark-native ~make
            word/get ~action!
            block/push blk31
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {select: make action! [[^{Find a value in a series a...}
            stack/mark-native ~set
            word/push ~skip
            stack/mark-native ~make
            word/get ~action!
            block/push blk32
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {skip: make action! [["Returns the series relative ...}
            stack/mark-native ~set
            word/push ~tail
            stack/mark-native ~make
            word/get ~action!
            block/push blk33
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {tail: make action! [[^{Returns a series at the inde...}
            stack/mark-native ~set
            word/push ~tail?
            stack/mark-native ~make
            word/get ~action!
            block/push blk34
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {tail?: make action! [["Returns true if a series is...}
            stack/mark-native ~set
            word/push ~if
            stack/mark-native ~make
            word/get ~native!
            block/push blk35
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {if: make native! [[^{If condition is true, evaluate...}
            stack/mark-native ~set
            word/push ~unless
            stack/mark-native ~make
            word/get ~native!
            block/push blk36
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {unless: make native! [[^{If condition is not true, ...}
            stack/mark-native ~set
            word/push ~either
            stack/mark-native ~make
            word/get ~native!
            block/push blk37
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {either: make native! [[^{If condition is true, eval...}
            stack/mark-native ~set
            word/push ~any
            stack/mark-native ~make
            word/get ~native!
            block/push blk38
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {any: make native! [["Evaluates, returning at the f...}
            stack/mark-native ~set
            word/push ~all
            stack/mark-native ~make
            word/get ~native!
            block/push blk39
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {all: make native! [[^{Evaluates, returning at the f...}
            stack/mark-native ~set
            word/push ~while
            stack/mark-native ~make
            word/get ~native!
            block/push blk40
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {while: make native! [["Evaluates body until condit...}
            stack/mark-native ~set
            word/push ~until
            stack/mark-native ~make
            word/get ~native!
            block/push blk41
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {until: make native! [["Evaluates body until it is ...}
            stack/mark-native ~set
            word/push ~loop
            stack/mark-native ~make
            word/get ~native!
            block/push blk42
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {loop: make native! [["Evaluates body a number of t...}
            stack/mark-native ~set
            word/push ~repeat
            stack/mark-native ~make
            word/get ~native!
            block/push blk43
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {repeat: make native! [[^{Evaluates body a number of...}
            stack/mark-native ~set
            word/push ~foreach
            stack/mark-native ~make
            word/get ~native!
            block/push blk44
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {foreach: make native! [["Evaluates body for each v...}
            stack/mark-native ~set
            word/push ~forall
            stack/mark-native ~make
            word/get ~native!
            block/push blk45
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {forall: make native! [["Evaluates body for all val...}
            stack/mark-native ~set
            word/push ~func
            stack/mark-native ~make
            word/get ~native!
            block/push blk46
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {func: make native! [["Defines a function with a gi...}
            stack/mark-native ~set
            word/push ~function
            stack/mark-native ~make
            word/get ~native!
            block/push blk47
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {function: make native! [[^{Defines a function, maki...}
            stack/mark-native ~set
            word/push ~does
            stack/mark-native ~make
            word/get ~native!
            block/push blk48
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {does: make native! [[^{Defines a function with no a...}
            stack/mark-native ~set
            word/push ~has
            stack/mark-native ~make
            word/get ~native!
            block/push blk49
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {has: make native! [[^{Defines a function with local...}
            stack/mark-native ~set
            word/push ~switch
            stack/mark-native ~make
            word/get ~native!
            block/push blk50
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {switch: make native! [[^{Evaluates the first block ...}
            stack/mark-native ~set
            word/push ~case
            stack/mark-native ~make
            word/get ~native!
            block/push blk51
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {case: make native! [[^{Evaluates the block followin...}
            stack/mark-native ~set
            word/push ~do
            stack/mark-native ~make
            word/get ~native!
            block/push blk52
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {do: make native! [[^{Evaluates a value, returning t...}
            stack/mark-native ~set
            word/push ~reduce
            stack/mark-native ~make
            word/get ~native!
            block/push blk53
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {reduce: make native! [[^{Returns a copy of a block,...}
            stack/mark-native ~set
            word/push ~compose
            stack/mark-native ~make
            word/get ~native!
            block/push blk54
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {compose: make native! [["Returns a copy of a block...}
            stack/mark-native ~set
            word/push ~get
            stack/mark-native ~make
            word/get ~native!
            block/push blk55
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {get: make native! [["Returns the value a word refe...}
            stack/mark-native ~set
            word/push ~set
            stack/mark-native ~make
            word/get ~native!
            block/push blk56
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {set: make native! [["Sets the value(s) one or more...}
            stack/mark-native ~set
            word/push ~print
            stack/mark-native ~make
            word/get ~native!
            block/push blk57
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {print: make native! [["Outputs a value followed by...}
            stack/mark-native ~set
            word/push ~prin
            stack/mark-native ~make
            word/get ~native!
            block/push blk58
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {prin: make native! [["Outputs a value." value [any...}
            stack/mark-native ~set
            word/push ~equal?
            stack/mark-native ~make
            word/get ~native!
            block/push blk59
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {equal?: make native! [["Returns true if two values...}
            stack/mark-native ~set
            word/push ~not-equal?
            stack/mark-native ~make
            word/get ~native!
            block/push blk60
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {not-equal?: make native! [["Returns true if two va...}
            stack/mark-native ~set
            word/push ~strict-equal?
            stack/mark-native ~make
            word/get ~native!
            block/push blk61
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {strict-equal?: make native! [[^{Returns true if two...}
            stack/mark-native ~set
            word/push ~lesser?
            stack/mark-native ~make
            word/get ~native!
            block/push blk62
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {lesser?: make native! [[^{Returns true if the first...}
            stack/mark-native ~set
            word/push ~greater?
            stack/mark-native ~make
            word/get ~native!
            block/push blk63
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {greater?: make native! [[^{Returns true if the firs...}
            stack/mark-native ~set
            word/push ~lesser-or-equal?
            stack/mark-native ~make
            word/get ~native!
            block/push blk64
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {lesser-or-equal?: make native! [[^{Returns true if ...}
            stack/mark-native ~set
            word/push ~greater-or-equal?
            stack/mark-native ~make
            word/get ~native!
            block/push blk65
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {greater-or-equal?: make native! [[^{Returns true if...}
            stack/mark-native ~set
            word/push ~same?
            stack/mark-native ~make
            word/get ~native!
            block/push blk66
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {same?: make native! [["Returns true if two values ...}
            stack/mark-native ~set
            word/push ~not
            stack/mark-native ~make
            word/get ~native!
            block/push blk67
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {not: make native! [[^{Returns the negation (logical...}
            stack/mark-native ~set
            word/push ~halt
            stack/mark-native ~make
            word/get ~native!
            block/push blk68
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {halt: make native! [["Stops evaluation."] #get-def...}
            stack/mark-native ~set
            word/push ~type?
            stack/mark-native ~make
            word/get ~native!
            block/push blk69
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {type?: make native! [["Returns the datatype of a v...}
            stack/mark-native ~set
            word/push ~load
            stack/mark-native ~make
            word/get ~native!
            block/push blk70
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {load: make native! [[^{Returns a value or block of ...}
            stack/mark-native ~set
            word/push ~stats
            stack/mark-native ~make
            word/get ~native!
            block/push blk71
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {stats: make native! [["Returns interpreter statist...}
            stack/mark-native ~set
            word/push ~bind
            stack/mark-native ~make
            word/get ~native!
            block/push blk72
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| {bind: make native! [[word [block! any-word!] conte...}
            stack/mark-native ~set
            word/push ~+
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~add
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "+: make op! :add"
            stack/mark-native ~set
            word/push ~-
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~subtract
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "-: make op! :subtract"
            stack/mark-native ~set
            word/push ~*
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~multiply
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "*: make op! :multiply"
            stack/mark-native ~set
            word/push ~/
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~divide
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "/: make op! :divide"
            stack/mark-native ~set
            word/push ~=
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~equal?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "=: make op! :equal?"
            stack/mark-native ~set
            word/push ~<>
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~not-equal?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "<>: make op! :not-equal?"
            stack/mark-native ~set
            word/push ~==
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~strict-equal?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "==: make op! :strict-equal?"
            stack/mark-native ~set
            word/push ~=?
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~same?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "=?: make op! :same?"
            stack/mark-native ~set
            word/push ~<
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~lesser?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "<: make op! :lesser?"
            stack/mark-native ~set
            word/push ~>
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~greater?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| ">: make op! :greater?"
            stack/mark-native ~set
            word/push ~<=
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~lesser-or-equal?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "<=: make op! :lesser-or-equal?"
            stack/mark-native ~set
            word/push ~>=
            stack/mark-native ~make
            word/get ~op!
            get-word/get ~greater-or-equal?
            actions/make*
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| ">=: make op! :greater-or-equal?"
            stack/mark-native ~set
            word/push ~Red
            word/get ~true
            word/set
            stack/unwind
            stack/reset
            ------------| "Red: true"
            stack/mark-native ~set
            word/push ~yes
            stack/mark-native ~set
            word/push ~on
            word/get ~true
            word/set
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "yes: on: true"
            stack/mark-native ~set
            word/push ~no
            stack/mark-native ~set
            word/push ~off
            word/get ~false
            word/set
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "no: off: false"
            stack/mark-native ~set
            word/push ~tab
            char/push 9
            word/set
            stack/unwind
            stack/reset
            ------------| "tab: #'00000009"
            stack/mark-native ~set
            word/push ~cr
            char/push 13
            word/set
            stack/unwind
            stack/reset
            ------------| "cr: #'0000000D"
            stack/mark-native ~set
            word/push ~newline
            stack/mark-native ~set
            word/push ~lf
            char/push 10
            word/set
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "newline: lf: #'0000000A"
            stack/mark-native ~set
            word/push ~escape
            char/push 27
            word/set
            stack/unwind
            stack/reset
            ------------| "escape: #'0000001B"
            stack/mark-native ~set
            word/push ~slash
            char/push 47
            word/set
            stack/unwind
            stack/reset
            ------------| "slash: #'0000002F"
            stack/mark-native ~set
            word/push ~sp
            stack/mark-native ~set
            word/push ~space
            char/push 32
            word/set
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "sp: space: #'00000020"
            stack/mark-native ~set
            word/push ~null
            char/push 0
            word/set
            stack/unwind
            stack/reset
            ------------| "null: #'00000000"
            stack/mark-native ~set
            word/push ~crlf
            string/push str73
            word/set
            stack/unwind
            stack/reset
            ------------| {crlf: "^^M^^/"}
            stack/mark-native ~set
            word/push ~dot
            char/push 46
            word/set
            stack/unwind
            stack/reset
            ------------| "dot: #'0000002E"
            quit-return: func [status [integer!]] [quit status]
            stack/mark-native ~set
            word/push ~quit-return
            routine/push blk74 blk75 as integer! :quit-return
            word/set
            stack/unwind
            stack/reset
            ------------| {quit-return: routine [^{Stops evaluation and exits ...}
            stack/mark-native ~set
            word/push ~quit
            _function/push blk76 blk78 ctx77 as integer! :f_quit
            word/set
            stack/unwind
            stack/reset
            ------------| {quit: func ["Stops evaluation and exits the progra...}
            stack/mark-native ~set
            word/push ~empty?
            _function/push blk79 blk81 ctx80 as integer! :f_empty?
            word/set
            stack/unwind
            stack/reset
            ------------| {empty?: func ["Returns true if a series is at its ...}
            stack/mark-native ~set
            word/push ~??
            _function/push blk82 blk84 ctx83 as integer! :f_??
            word/set
            stack/unwind
            stack/reset
            ------------| {??: func ["Prints a word and the value it refers t...}
            stack/mark-native ~set
            word/push ~probe
            _function/push blk85 blk87 ctx86 as integer! :f_probe
            word/set
            stack/unwind
            stack/reset
            ------------| {probe: func ["Returns a value after printing its m...}
            stack/mark-native ~set
            word/push ~quote
            _function/push blk88 blk90 ctx89 as integer! :f_quote
            word/set
            stack/unwind
            stack/reset
            ------------| "quote: func [:value] [:value]"
            stack/mark-native ~set
            word/push ~first
            _function/push blk91 blk93 ctx92 as integer! :f_first
            word/set
            stack/unwind
            stack/reset
            ------------| {first: func ["Returns the first value in a series....}
            stack/mark-native ~set
            word/push ~second
            _function/push blk94 blk96 ctx95 as integer! :f_second
            word/set
            stack/unwind
            stack/reset
            ------------| {second: func ["Returns the second value in a serie...}
            stack/mark-native ~set
            word/push ~third
            _function/push blk97 blk99 ctx98 as integer! :f_third
            word/set
            stack/unwind
            stack/reset
            ------------| {third: func ["Returns the third value in a series....}
            stack/mark-native ~set
            word/push ~fourth
            _function/push blk100 blk102 ctx101 as integer! :f_fourth
            word/set
            stack/unwind
            stack/reset
            ------------| {fourth: func ["Returns the fourth value in a serie...}
            stack/mark-native ~set
            word/push ~fifth
            _function/push blk103 blk105 ctx104 as integer! :f_fifth
            word/set
            stack/unwind
            stack/reset
            ------------| {fifth: func ["Returns the fifth value in a series....}
            stack/mark-native ~set
            word/push ~last
            _function/push blk106 blk108 ctx107 as integer! :f_last
            word/set
            stack/unwind
            stack/reset
            ------------| {last: func ["Returns the last value in a series." ...}
            stack/mark-native ~set
            word/push ~action?
            _function/push blk109 blk111 ctx110 as integer! :f_action?
            word/set
            stack/unwind
            stack/reset
            ------------| {action?: func ["Returns true if the value is this ...}
            stack/mark-native ~set
            word/push ~block?
            _function/push blk112 blk114 ctx113 as integer! :f_block?
            word/set
            stack/unwind
            stack/reset
            ------------| {block?: func ["Returns true if the value is this t...}
            stack/mark-native ~set
            word/push ~char?
            _function/push blk115 blk117 ctx116 as integer! :f_char?
            word/set
            stack/unwind
            stack/reset
            ------------| {char?: func ["Returns true if the value is this ty...}
            stack/mark-native ~set
            word/push ~datatype?
            _function/push blk118 blk120 ctx119 as integer! :f_datatype?
            word/set
            stack/unwind
            stack/reset
            ------------| {datatype?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~file?
            _function/push blk121 blk123 ctx122 as integer! :f_file?
            word/set
            stack/unwind
            stack/reset
            ------------| {file?: func ["Returns true if the value is this ty...}
            stack/mark-native ~set
            word/push ~function?
            _function/push blk124 blk126 ctx125 as integer! :f_function?
            word/set
            stack/unwind
            stack/reset
            ------------| {function?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~get-path?
            _function/push blk127 blk129 ctx128 as integer! :f_get-path?
            word/set
            stack/unwind
            stack/reset
            ------------| {get-path?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~get-word?
            _function/push blk130 blk132 ctx131 as integer! :f_get-word?
            word/set
            stack/unwind
            stack/reset
            ------------| {get-word?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~integer?
            _function/push blk133 blk135 ctx134 as integer! :f_integer?
            word/set
            stack/unwind
            stack/reset
            ------------| {integer?: func ["Returns true if the value is this...}
            stack/mark-native ~set
            word/push ~issue?
            _function/push blk136 blk138 ctx137 as integer! :f_issue?
            word/set
            stack/unwind
            stack/reset
            ------------| {issue?: func ["Returns true if the value is this t...}
            stack/mark-native ~set
            word/push ~lit-path?
            _function/push blk139 blk141 ctx140 as integer! :f_lit-path?
            word/set
            stack/unwind
            stack/reset
            ------------| {lit-path?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~lit-word?
            _function/push blk142 blk144 ctx143 as integer! :f_lit-word?
            word/set
            stack/unwind
            stack/reset
            ------------| {lit-word?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~logic?
            _function/push blk145 blk147 ctx146 as integer! :f_logic?
            word/set
            stack/unwind
            stack/reset
            ------------| {logic?: func ["Returns true if the value is this t...}
            stack/mark-native ~set
            word/push ~native?
            _function/push blk148 blk150 ctx149 as integer! :f_native?
            word/set
            stack/unwind
            stack/reset
            ------------| {native?: func ["Returns true if the value is this ...}
            stack/mark-native ~set
            word/push ~none?
            _function/push blk151 blk153 ctx152 as integer! :f_none?
            word/set
            stack/unwind
            stack/reset
            ------------| {none?: func ["Returns true if the value is this ty...}
            stack/mark-native ~set
            word/push ~op?
            _function/push blk154 blk156 ctx155 as integer! :f_op?
            word/set
            stack/unwind
            stack/reset
            ------------| {op?: func ["Returns true if the value is this type...}
            stack/mark-native ~set
            word/push ~paren?
            _function/push blk157 blk159 ctx158 as integer! :f_paren?
            word/set
            stack/unwind
            stack/reset
            ------------| {paren?: func ["Returns true if the value is this t...}
            stack/mark-native ~set
            word/push ~path?
            _function/push blk160 blk162 ctx161 as integer! :f_path?
            word/set
            stack/unwind
            stack/reset
            ------------| {path?: func ["Returns true if the value is this ty...}
            stack/mark-native ~set
            word/push ~refinement?
            _function/push blk163 blk165 ctx164 as integer! :f_refinement?
            word/set
            stack/unwind
            stack/reset
            ------------| {refinement?: func ["Returns true if the value is t...}
            stack/mark-native ~set
            word/push ~set-path?
            _function/push blk166 blk168 ctx167 as integer! :f_set-path?
            word/set
            stack/unwind
            stack/reset
            ------------| {set-path?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~set-word?
            _function/push blk169 blk171 ctx170 as integer! :f_set-word?
            word/set
            stack/unwind
            stack/reset
            ------------| {set-word?: func ["Returns true if the value is thi...}
            stack/mark-native ~set
            word/push ~string?
            _function/push blk172 blk174 ctx173 as integer! :f_string?
            word/set
            stack/unwind
            stack/reset
            ------------| {string?: func ["Returns true if the value is this ...}
            stack/mark-native ~set
            word/push ~unset?
            _function/push blk175 blk177 ctx176 as integer! :f_unset?
            word/set
            stack/unwind
            stack/reset
            ------------| {unset?: func ["Returns true if the value is this t...}
            stack/mark-native ~set
            word/push ~word?
            _function/push blk178 blk180 ctx179 as integer! :f_word?
            word/set
            stack/unwind
            stack/reset
            ------------| {word?: func ["Returns true if the value is this ty...}
            stack/mark-native ~set
            word/push ~any-series?
            _function/push blk181 blk183 ctx182 as integer! :f_any-series?
            word/set
            stack/unwind
            stack/reset
            ------------| {any-series?: func [value] [find [block! paren! pat...}
            stack/mark-native ~set
            word/push ~spec-of
            _function/push blk184 blk186 ctx185 as integer! :f_spec-of
            word/set
            stack/unwind
            stack/reset
            ------------| {spec-of: func [^{Returns the spec of a value that s...}
            stack/mark-native ~set
            word/push ~body-of
            _function/push blk187 blk189 ctx188 as integer! :f_body-of
            word/set
            stack/unwind
            stack/reset
            ------------| {body-of: func [^{Returns the body of a value that s...}
            stack/mark-native ~set
            word/push ~system
            _function/push blk190 blk192 ctx191 as integer! :f_system
            word/set
            stack/unwind
            stack/reset
            ------------| {system: function ["Returns information about the i...}
            stack/mark-native ~set
            word/push ~replace
            _function/push blk193 blk195 ctx194 as integer! :f_replace
            word/set
            stack/unwind
            stack/reset
            ------------| {replace: func [series [series!] pattern value /all...}
            stack/mark-native ~set
            word/push ~zero?
            _function/push blk196 blk198 ctx197 as integer! :f_zero?
            word/set
            stack/unwind
            ------------| "zero?: func [value [number!]] [value = 0]"
            stack/mark-native ~set
            word/push ~i
            integer/push 1
            word/set
            stack/unwind
            stack/reset
            ------------| "i: 1"
            stack/mark-native ~set
            word/push ~j
            integer/push 2
            word/set
            stack/unwind
            stack/reset
            ------------| "j: 2"
            stack/mark-native ~set
            word/push ~s
            string/push str199
            word/set
            stack/unwind
            stack/reset
            ------------| {s: "hello"}
            stack/mark-native ~set
            word/push ~b
            block/push blk200
            word/set
            stack/unwind
            stack/reset
            ------------| {b: ["aa" "bb" 222]}
            stack/mark-native ~set
            word/push ~f
            _function/push blk201 blk203 ctx202 as integer! :f_f
            word/set
            stack/unwind
            stack/reset
            ------------| {f: function [n [integer!] s [string!] return: [int...}
            stack/mark-native ~set
            word/push ~m
            stack/mark-func ~f
            integer/push 3
            word/get ~s
            f_f
            stack/unwind
            word/set
            stack/unwind
            stack/reset
            ------------| "m: f 3 s"
            stack/mark-native ~print
            word/get ~s
            natives/print*
            stack/unwind
            stack/reset
            ------------| "print s"
            stack/mark-native ~type?
            get-word/get ~f
            natives/type?* -1
            stack/unwind
            stack/reset
            ------------| "type? :f"
            stack/mark-native ~set
            word/push ~f2
            get-word/get ~f
            word/set
            stack/unwind
            stack/reset
            ------------| "f2: :f"
            stack/mark-native ~set
            word/push ~fn
            _function/push blk204 blk206 ctx205 as integer! :f_fn
            word/set
            stack/unwind
            stack/reset
            ------------| {fn: function [i [integer!] /local f1] [f1: functio...}
            stack/mark-native ~set
            word/push ~fc
            _function/push blk207 blk209 ctx208 as integer! :f_fc
            word/set
            stack/unwind
            stack/reset
            ------------| {fc: function [i [integer!] /local loc inner] [loc:...}
            stack/mark-native ~do
            block/push blk210
            natives/do*
            stack/unwind
            stack/reset
            ------------| {do [name: "Red Programming Language" fun: function...}
            stack/mark-native ~do
            string/push str211
            natives/do*
            stack/unwind
            ------------| {do "print s"}
        ]
    ]
]
...compilation time: 	 154 ms

Compiling to native code...
...compilation time : 6787 ms
...linking time     : 88 ms
...output file size : 172032 bytes
...output file      : /Red/src/red-v040/dig/test/test_func

