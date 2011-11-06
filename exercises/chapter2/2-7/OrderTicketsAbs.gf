abstract OrderTicketsAbs = {
	 flags startcat = Order;
	 
	 cat 
	     Order; Place; 
	 fun
	     OrderTicket : Place -> Place -> Order;
	     Stuttgart, Hamburg, Amsterdam : Place;
}
