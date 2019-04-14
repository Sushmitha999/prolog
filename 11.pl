is_prime(2).

is_prime(3).

is_prime(P):- 
	integer(P), 
	P>3, 
	P mod 2=\=0, 
	\+ factor(P,3).  


factor(N,L):-
	N mod L=:=0.

factor(N,L):- 
	L*L<N, 
	L2 is L+2, 
	factor(N,L2).
