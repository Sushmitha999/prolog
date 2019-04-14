slice([X|_],1,1,[X]).
slice([X|Xp],1,K,[X|Yp]):- 
	K>1, 
   	K1 is K-1, 
	slice(Xp,1,K1,Yp).
slice([_|Xp],I,K,Yp):-
	I>1, 
   	I1 is I-1, 
	K1 is K-1,
	slice(Xp,I1,K1,Yp).
