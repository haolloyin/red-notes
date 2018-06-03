
-=== Red Compiler 0.4.0 ===- 

Compiling /Red/src/red-v040/dig/test/test.red ...
[
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
        string/push str205 
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
        block/push blk206 
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
            ------------| {"0.4.0, 17-Mar-2018/23:29:50+8:00"} 
            string/push str207 
            ------------| {"0.4.0, 17-Mar-2018/23:29:50+8:00"}
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
                        string/push str208 
                        natives/print* 
                        stack/unwind 
                        ------------| {print ^{Please specify a system refinement value (/...}
                    ] [stack/reset none/push-last]
                ]
            ]
        ] 
        stack/unwind 
        ------------| {case [version ["0.4.0, 17-Mar-2018/23:29:50+8:00"]...} 
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
    f_inc: func [/local ~n] [
        push ctx203/values 
        ctx203/values: as node! stack/arguments 
        ~n: stack/arguments 
        stack/mark-native ~inc 
        stack/reset 
        stack/mark-native ~add 
        stack/push ~n 
        integer/push 1 
        actions/add* 
        stack/unwind 
        ------------| "n + 1" 
        stack/unwind-last 
        ctx203/values: as node! pop
    ]
]
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
