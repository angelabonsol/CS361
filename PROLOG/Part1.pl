f(0,1).
f(X,5) :- X>0.

g(x) = 2*x
g(X,Y) :- Y is 2*X.

speaks(allen,russian).
speaks(bob,english).
speak(mary,russian).
speaks(mary,english).
talkswith(Person1,Person2):-speaks(Person1,L),
speaks(Person2,L), Person 1 \= Person2.

fact(n) = if n=0 then 1 else n*fact(n-1)

factorial(0,1).
factorial(N, Result) :- N>0, M is N-1,
factorial(M,SubResult), Result is N*SubResult.

fib(0,1).
fib(1,1).
fib(N,R) :- N>1, N1 is N-1, N2 is N-2, fib(N1,R1),
fib(N2,R2), R is R1+R2.

f(0,1).
f(X,5) :- X>0.
f(0,1) :- !.
f(X,5) :-.

bsort(L,S) :- append(U,[A,B|V],L), B<A, !,
append(U,[B,A|V],M), bsort(M,S).
bsort(L,L).
