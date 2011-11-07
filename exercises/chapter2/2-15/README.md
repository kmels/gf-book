Description
-------------
Write a compiler of the kind described in Section 1.5 that translates addition expressions to JVM assembler. It is enough to have a couple of integer constants. You can either make parenthesis obligatory (as in (2+3)) or leave them out altogether. The latter alternative can either make expressions ambiguous or assume some form of precedence. 

Usage demo
-------------
	AdditionExpressions> e
	0 msec
	> i JVMAdditionExpressions.gf                                                   
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-15/AdditionExpressions.gfo
	- compiling /home/kmels/code/gym/gf-book/exercises/chapter2/2-15/JVMAdditionExpressions.gf...   wrote file /home/kmels/code/gym/gf-book/exercises/chapter2/2-15/JVMAdditionExpressions.gfo
	linking ... OK

	Languages: JVMAdditionExpressions
	10 msec
	AdditionExpressions> i InfixAdditionExpressions.gf                                                 
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-15/AdditionExpressions.gfo
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-15/InfixAdditionExpressions.gfo
	linking ... OK

	Languages: InfixAdditionExpressions JVMAdditionExpressions
	0 msec
	AdditionExpressions> p -lang=InfixAdditionExpressions "+ 2 2"  | l -lang=JVMAdditionExpressions    
	iconst_2 iconst_2 iadd


	10 msec
	AdditionExpressions> p -lang=InfixAdditionExpressions "+ 2 + 2 3"  | l -lang=JVMAdditionExpressions
	iconst_2 iconst_2 iconst_3 iadd iadd


	10 msec
	AdditionExpressions> p -lang=InfixAdditionExpressions "+ 2 + 2 + 3 3"  | l -lang=JVMAdditionExpressions
	iconst_2 iconst_2 iconst_3 iconst_3 iadd iadd iadd
