last_element(X,[X]).
last_element(X,[_|L]) :- 
	last_element(X,L).