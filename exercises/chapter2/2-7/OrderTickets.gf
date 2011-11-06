concrete OrderTickets of OrderTicketsAbs = {
	 lincat Order, Place = Str;
	 
	 lin OrderTicket x y = (((("I" ++ ("would like" | "want") ++ "to get" | ("may" | "can") ++ "I get" | "can you give me" | []) ++ "a ticket") | []) | "I want to go") ++ "from" ++ x ++ "to" ++ y ++ ("please" | []);
	     
	 Stuttgart = "Stuttgart" ;
	 Hamburg = "Hamburg" ;
	 Amsterdam = "Amsterdam" ;
}
