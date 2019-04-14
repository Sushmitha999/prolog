%ensure 8.pl is loaded.

rand_select(_,0,[]).
rand_select(Xp,N,[X|Zp]):-
	N>0,
    	length(Xp,L),
    	I is random(L)+1,
    	remove_at(X,Xp,I,Yp),
    	N1 is N-1,
    	rand_select(Yp,N1,Zp).
