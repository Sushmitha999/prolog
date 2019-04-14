remove_at(X,[X|Xp],1,Xp).
remove_at(X,[Y|Xp],K,[Y|Yp]) :- 
	K>1, 
   	K1 is K-1,
	remove_at(X,Xp,K1,Yp).	
