element_at(X,[X|_],1).
element_at(X,[_|Y],K):- 
	K>1, 
	L is K-1, 
	element_at(X,Y,L).
