## Ex1
```prolog
[trace]  ?- r(f(f(a)),b).
   Call: (10) r(f(f(a)), b) ? creep
   Call: (11) p(f(a), b) ? creep
   Call: (12) r(a, b) ? creep
   Exit: (12) r(a, b) ? creep
   Exit: (11) p(f(a), b) ? creep
   Exit: (10) r(f(f(a)), b) ? creep
true.

[trace]  ?- p(f(a),b).
   Call: (10) p(f(a), b) ? creep
   Call: (11) r(a, b) ? creep
   Exit: (11) r(a, b) ? creep
   Exit: (10) p(f(a), b) ? creep
true.
```
## Ex2
```prolog
[trace]  ?- q(X,b).
   Call: (10) q(_40842, b) ? creep
   Exit: (10) q(b, b) ? creep
X = b .

[trace]  ?- q(b,X).
   Call: (10) q(b, _44956) ? creep
   Exit: (10) q(b, b) ? creep
X = b .
```

## Ex3
```prolog
revisent(X) :- serieux(X).
do_homework(X) :- consciencieux(X).
pass_exam(X) :- revisent(X).
serieux(X) :- do_homework(X).
consciencieux(pascal).
consciencieux(zoe).
```

## Ex4
```prolog
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
```