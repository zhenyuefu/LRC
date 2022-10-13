pere(pgp,pepin).
pere(gp,pepin).
pere(pepin,charlemagne).
mere(berthe,charlemagne).
parent(X,Y) :- pere(X,Y).
parent(X,Y) :- mere(X,Y).
parents(X,Y,Z) :- pere(X,Z),mere(Y,Z).
grand_pere(X,Y) :- pere(X,Z),parent(Z,Y).
frere_ou_soeur(X,Y) :- parent(Z,X),parent(Z,Y),X\=Y.
ancetre(X,Y) :- parent(X,Y).
ancetre(X,Y) :- parent(X,Z),ancetre(Z,Y).