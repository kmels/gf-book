-- Define the reverse operation as a GF grammar by using one abstract syntax and two concrete syntaxes. Translation between the concrete syntaxes should read a sequence of symbols and return them in the opposite order. For instance, a b c is translated to c a b

abstract ReversibleLanguage = {
	 flags startcat = CompoundItem;
	 cat
	     Item; CompoundItem;
	 fun 
	     ComposeCompound: Item -> CompoundItem -> CompoundItem;
	     Compose : Item -> Item -> CompoundItem;
	     A, B, C: Item ;
}
