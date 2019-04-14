%    Euler's so-called totient function phi(m) is defined as the number of positive integers r that are coprime to m. 
%ensure 13.pl is loaded

totient(1,1):- !.
totient(M,P):- phi(M,P,1,0).	%format: totient(m,r)


phi(M,P,M,P):- !.
phi(M,P,K,C):- 
   	K<M, 
   	coprime(K,M),!, 
   	C1 is C+1, 
	K1 is K+1,
   	phi(M,P,K1,C1).
phi(M,P,K,C):- 
   	K<M,K1 is K+1,
   	phi(M,P,K1,C).
