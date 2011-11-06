Description
-------------
Create a word alignment graph for a string of length 10 by using the reversing grammar of the exercise in Section 2.9

Usage demo
-------------
	> i ../2-6/ReverseLanguage.gf                                              
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/ReversibleLanguage.gfo
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/ReverseLanguage.gfo
	linking ... OK

	Languages: ReverseLanguage
	10 msec
	ReversibleLanguage> i ../2-6/Language.gf                                                     
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/ReversibleLanguage.gfo
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-6/Language.gfo
	linking ... OK

	Languages: Language ReverseLanguage
	30 msec
	ReversibleLanguage> p "a b c b" | aw | wf -file=abcb.dot

	20 msec
	ReversibleLanguage> ! dot -Tpng abcb.dot > abcb.dot
	10 msec
	ReversibleLanguage> p "a b c b" | aw | wf -file=abcb.dot

	10 msec
	ReversibleLanguage> ! dot -Tpng abcb.dot > abcb.png     
	0 msec
	ReversibleLanguage> ! eog abcb.png
	Xlib:  extension "RANDR" missing on display ":0".
	10 msec
	ReversibleLanguage> p "a b c b a b c c c a" | aw | wf -file=abcbabccca.dot

	30 msec
	ReversibleLanguage> ! dot -Tpng abcbabccca.dot > abcbabccca.png           
	10 msec
	ReversibleLanguage> ! eog abcbabccca.png
	Xlib:  extension "RANDR" missing on display ":0".
	10 msec
