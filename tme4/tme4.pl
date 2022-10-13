concatene(L,[],L).
concatene([],L,L).
concatene([X|L1],L2,[X|L3]) :- concatene(L1,L2,L3).

inverse([],[]).
inverse([X|L1],L2) :- inverse(L1,L3), concatene(L3,[X],L2).

supprime([],_,[]).
supprime([X|L1],Y,Z) :-  X = Y, supprime(L1,Y,Z2), concatene([],Z2,Z).
supprime([X|L1],Y,Z) :-  X \= Y, supprime(L1,Y,Z2), concatene([X],Z2,Z).

filtre(X,[],X).
filtre(L,[X|Y],Z) :- supprime(L,X,Z2), filtre(Z2,Y,Z).

palindrome(L) :- inverse(L,L).
palindrome2([]).
palindrome2([_]).
palindrome2([X|L]) :- concatene(L2,[X],L), palindrome2(L2).
