%Create a list containing all integers within a given range.

range(I,I,[I]).
range(I,F,[I|L]):- 
	I<F, 
	I1 is I+1,
	range(I1,F,L).
