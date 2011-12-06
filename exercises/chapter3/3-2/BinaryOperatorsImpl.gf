concrete BinaryOperatorsImpl of BinaryOperators = {
    param Bool = True | False;
    oper
        and : Bool -> Bool -> Bool = \b1, b2 -> table {
            False => table { _ => False };
            True => table { False => False ; True => True }
        } ! b1 ! b2 ;
        or : Bool -> Bool -> Bool = \b1, b2 -> table {
            False => table { True => True ; False => False };
            True => table { _ => True }
        } ! b1 ! b2 ;
}