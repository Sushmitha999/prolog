%ensure 11.pl is loaded.   
prime_list(A,B,L) :- 
	A =< 2, !, 
	list(2,B,L).

prime_list(A,B,L) :- 
	A1 is (A//2)*2+1,
	list(A1,B,L).


list(A,B,[]):-
	A>B, !.

list(A,B,[A|L]):-
	is_prime(A), !, 
   
	next(A,A1), 
	list(A1,B,L).

list(A,B,L):-
	next(A,A1), 
	list(A1,B,L).


next(2,3):- !.

next(A,A1):- 
	A1 is A+2.
