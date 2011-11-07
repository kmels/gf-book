abstract AdditionExpressions = {
	 flags startcat = AddedNumber;
	 cat 
		Number; AddedNumber;
	 fun
		Addition: Number -> AddedNumber -> AddedNumber;
		Constant: Number -> AddedNumber;
		Two, Three: Number;
}