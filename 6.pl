reverse_list(L1,L2):- 
	rev_list(L1,L2,[]).

rev_list([],L2,L2) :- !.
rev_list([X|Xp],L2,A) :-
	 rev_list(Xp,L2,[X|A]).

is_palindrome(L) :- 
	reverse_list(L,L).

