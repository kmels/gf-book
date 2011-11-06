-- Write a version of the food grammar for a language of 
-- your choice. Some rules will probably produce incorrect output, but 
-- don't worry: this will be solved later. Just make a list of the things 
-- that come out wrong, and use it later when you redesign the grammar

Pred.	Comment  ::= Item "ist" Quality
Dieser. Item	 ::= "dieser" Kind
Mod.	Kind	 ::= Quality Kind
Wine.	Kind	 ::= "Wein"
Cheese	Kind	 ::= "Käse"
Fish	Kind	 ::= "Fisch"
Very	Quality	 ::= "sehr" Quality
Fresh	Quality	 ::= "frisch"
Warm	Quality	 ::= "warm"
Italian	Quality	 ::= "italienisch"
Expensive Quality ::= "teuer"
Delicious Quality ::= "lecker"
Doring	  Quality ::= "langweilig"


-- bugs:
-- * Quality ending e.g. italian cheese == italienischen Käse
