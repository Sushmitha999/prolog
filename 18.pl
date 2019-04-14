%ensure 17.pl is loaded.

rotate(L1,N,L2):- 
	N>=0, 
   	length(L1,Z), 
	N1 is N mod Z, 
	rotate_left(L1,N1,L2).

rotate(L1,N,L2):- 
	N<0,
   	length(L1,Z), 
	N1 is Z+(N mod Z), 
	rotate_left(L1,N1,L2).

rotate_left(L,0,L).
rotate_left(L1,N,L2):- 
	N>0, 
	split(L1,N,S1,S2), 
	append(S2,S1,L2).




