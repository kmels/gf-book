Description: Define the reverse operation as a GF grammar by using one abstract syntax and two concrete syntaxes. Translation between the concrete syntaxes should read a sequence of symbols and return them in the opposite order. For instance, a b c is translated to c a b

    This is GF version 3.2. 
    License: see help -license.
    Bug reports: http://code.google.com/p/grammatical-framework/issues/list


    Languages:
    > e
    0 msec

    import Language.gf                           
    + reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/ReversibleLanguage.gfo
    + reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/Language.gfo
    linking ... OK

    Languages: Language
    10 msec
    ReversibleLanguage> import ReverseLanguage.gf                    
    + reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/ReversibleLanguage.gfo
    + reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/ReverseLanguage.gfo
    linking ... OK
    
    Languages: Language ReverseLanguage
    10 msec
    ReversibleLanguage> p -lang=Language  "a b c" | l -lang=ReverseLanguage      
    c b a


    0 msec
    ReversibleLanguage> p -lang=Language  "a a b b c c" | l -lang=ReverseLanguage
    c c b b a a


    20 msec

