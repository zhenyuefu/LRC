revisent(X) :- serieux(X).
do_homework(X) :- consciencieux(X).
pass_exam(X) :- revisent(X).
serieux(X) :- do_homework(X).
consciencieux(pascal).
consciencieux(zoe).