concrete BinaryOperatorsImpl of BinaryOperators = {
    lin    
        Conjunction = table {
            False => table { _ => False };
            True => table { False => False ; True => True }
        };
        Disjunction = table {
            False => table { True => True ; False => False };
            True => table { _ => True }
        };
    param
        Bool = True | False ;
}