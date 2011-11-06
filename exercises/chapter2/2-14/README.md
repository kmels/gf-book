Description
-------------
Make the reversing grammar of the exercise in Section 2.9 work with unspaced strings of of letters a to z, for instance, to convert the input "abcdefghi" to "ihgfedcba"

Usage demo
-------------
	> i Language.gf            
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-14/ReversibleLanguage.gfo
	- compiling /home/kmels/code/gym/gf-book/exercises/chapter2/2-14/Language.gf...   wrote file /home/kmels/code/gym/gf-book/exercises/chapter2/2-14/Language.gfo
	linking ... OK

	Languages: Language
	10 msec
	ReversibleLanguage> i ReverseLanguage.gf           
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-14/ReversibleLanguage.gfo
	- compiling /home/kmels/code/gym/gf-book/exercises/chapter2/2-14/ReverseLanguage.gf...   wrote file /home/kmels/code/gym/gf-book/exercises/chapter2/2-14/ReverseLanguage.gfo
	linking ... OK

	Languages: Language ReverseLanguage
	0 msec
	ReversibleLanguage> ps -chars "abcdefghi" | p
	ComposeCompound A (ComposeCompound B (ComposeCompound C (ComposeCompound D (ComposeCompound E (ComposeCompound F (ComposeCompound G (Compose H I)))))))
	ComposeCompound I (ComposeCompound H (ComposeCompound G (ComposeCompound F (ComposeCompound E (ComposeCompound D (ComposeCompound C (Compose B A)))))))

	10 msec
	ReversibleLanguage> ps -chars "abcdefghi" | p | l
	a b c d e f g h i
	i h g f e d c b a

	i h g f e d c b a
	a b c d e f g h i


	10 msec
	ReversibleLanguage> gr                      
	Compose E D

	0 msec
	ReversibleLanguage> gr | l 
	i j j
	j j i


	10 msec
	ReversibleLanguage> gr | l | ps -unchars
	ej
	je

	0 msec
	ReversibleLanguage> gr -number=5 | l | ps -unchars 
	jdb
	bdj
	dhjhh
	hhjhd
	cfa
	afc
	ji
	ij
	fj
	jf

	10 msec