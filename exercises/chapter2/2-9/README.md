Description
-------------
Add the *with* construction to the `Food` grammar, in both the ambiguous and the unambiguous versions.

Usage demo
-------------
	Food> e
	0 msec
	> i FoodEng.gf                                           
	- compiling /home/kmels/code/gym/gf-book/exercises/chapter2/2-9/Food.gf...   wrote file /home/kmels/code/gym/gf-book/exercises/chapter2/2-9/Food.gfo
	- compiling /home/kmels/code/gym/gf-book/exercises/chapter2/2-9/FoodEng.gf...   wrote file /home/kmels/code/gym/gf-book/exercises/chapter2/2-9/FoodEng.gfo
	linking ... OK

	Languages: FoodEng
	10 msec
	Food> i FoodIta.gf                                           
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-9/Food.gfo
	- compiling /home/kmels/code/gym/gf-book/exercises/chapter2/2-9/FoodIta.gf...   wrote file /home/kmels/code/gym/gf-book/exercises/chapter2/2-9/FoodIta.gfo
	linking ... OK

	Languages: FoodEng FoodIta
	10 msec

	Food> p -lang=FoodEng "this cheese with wine is very Italian"
	Pred (This (With Cheese Wine)) (Very Italian)

	0 msec
	Food> p -lang=FoodEng "this cheese with wine is very Italian" | l -lang=FoodIta
	questo formaggio con vino è molto italiano
