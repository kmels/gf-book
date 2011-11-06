-- Define the reverse operation as a GF grammar by using one abstract syntax and two concrete syntaxes. Translation between the concrete syntaxes should read a sequence of symbols and return them in the opposite order. For instance, a b c is translated to c a b

concrete ReverseLanguage of ReversibleLanguage = {
	lincat
	 	Item, CompoundItem = Str;
	lin 
		ComposeCompound item compoundItem = compoundItem ++ item;
		Compose item1 item2 = item2 ++ item1;
 		A = "a" ; B = "b" ; C = "c" ;
}
