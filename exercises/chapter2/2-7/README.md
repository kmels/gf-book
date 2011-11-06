Description
-------------
Write a grammar containing the rule in Figure 16 and minimally, two names of stations. Se all different alternatives by using linearization with the flag -all in GF. Add more ways of requesting ticket, for instance, I want to go from X to Y.

Usage demo
-------------
	OrderTicketsAbs> e
	0 msec
	> i OrderTickets.gf                                       
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-7/OrderTicketsAbs.gfo
	+ reading /home/kmels/code/gym/gf-book/exercises/chapter2/2-7/OrderTickets.gfo
	linking ... OK

	Languages: OrderTickets
	10 msec
	OrderTicketsAbs> p "I want to get a ticket from Stuttgart to Hamburg"    
	OrderTicket Stuttgart Hamburg

	0 msec

	OrderTicketsAbs> gr -number=5 | l                                                
	I would like to get a ticket from Amsterdam to Amsterdam please

	I would like to get a ticket from Hamburg to Stuttgart please

	I would like to get a ticket from Hamburg to Hamburg please

	I would like to get a ticket from Amsterdam to Amsterdam please

	I would like to get a ticket from Stuttgart to Stuttgart please


	0 msec

	OrderTicketsAbs> p "I want to go from Stuttgart to Amsterdam"            
	OrderTicket Stuttgart Amsterdam

	0 msec