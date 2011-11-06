Description
-------------
Add negative predication to the Food grammar, expressed by *is not* or *isn't* in English, and by *non é* in Italian.

Usage demo
-------------
	Food> e                                         
	0 msec
	> i FoodEng.gf                                
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-8/Food.gfo
	- compiling /home/kmels/code/gym/gf-book/exercises/chapter2/2-8/FoodEng.gf...   wrote file /home/kmels/code/gym/gf-book/exercises/chapter2/2-8/FoodEng.gfo
	linking ... OK

	Languages: FoodEng
	10 msec
	Food> p -lang=FoodEng "this cheese is Italian"  
	Pred (This Cheese) Italian

	10 msec
	Food> p -lang=FoodEng "this cheese is not Italian"
	Pred (This Cheese) Italian

	0 msec
	Food> p -lang=FoodEng "this cheese isn't Italian" 
	Pred (This Cheese) Italian

	10 msec
	Food> gr -number=5                               
	Pred (That Wine) Expensive
	Pred (That Cheese) Delicious
	Pred (This (Mod (Very Italian) Wine)) Boring
	Pred (That (Mod Expensive Fish)) Expensive
	Pred (That Wine) Warm

	0 msec
	Food> gr -number=5 | l
	this fresh wine is Italian

	that boring Italian cheese is Italian

	that cheese is delicious

	that cheese is warm

	that wine is warm


	10 msec
	Food> i FoodIta.gf    
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-8/Food.gfo
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-8/FoodIta.gfo
	linking ... OK

	Languages: FoodEng FoodIta
	10 msec

	Food> p "questo vino non é molto italiano"
	The parser failed at token "questo"
	Pred (This Wine) (Very Italian)

	10 msec
	Food> p "quel vino non é molto italiano"  
	The parser failed at token "quel"
	Pred (That Wine) (Very Italian)

	0 msec
	Food> p -lang=FoodIta "quel vino non é molto italiano"
	Pred (That Wine) (Very Italian)

	10 msec
	Food> p -lang=FoodIta "quel vino non é molto italiano" | l
	that wine is very Italian
	quel vino è molto italiano
