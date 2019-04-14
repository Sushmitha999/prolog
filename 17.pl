split(L,0,[],L).
split([X|Xp],N,[X|Yp],Zp):-
	N>0, 
	N1 is N-1, 
	split(Xp,N1,Yp,Zp).

