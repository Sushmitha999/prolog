flatten_list(X,[X]):- 
	\+ is_list(X).
flatten_list([],[]).
flatten_list([X|Xp],Zp):- 
	flatten_list(X,Y), 
	flatten_list(Xp,Yp), 
	append(Y,Yp,Zp).

