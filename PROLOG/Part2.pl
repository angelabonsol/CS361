
s(X, Y) :- np(X, U), vp(U, Y).
np(X, Y) :- det(X, U), n(U, Y).
vp(X, Y) :- tv(X, U), np(U, Y).
vp(X, Y) :- iv(X, U).
det([the| Y], Y).
det([a| Y], Y).
det([an| Y], Y).
n([giraffe| Y], Y).
n([apple| Y], Y).
iv([dreams| Y], Y).
tv([eats| Y], Y).
tv([dreams| Y], Y).

s([the, giraffe, dreams], []).
s([the, giraffe, sleeps], []).
s(X, []).

s(s(NP, VP)) --> np(NP),vp(VP).
np(np(DET,N)) --> det(DET), n(N).
vp(vp(tv(TV),np(NP))) --> tv(TV),np(NP).
vp(vp(VP)) --> iv(VP).
det(det(the)) --> [the].
det(det(a)) --> [a].
det(det(a)) --> [an].
n(n(giraffe)) --> [giraffe].
n(n(apple)) --> [apple].
iv(iv(dreams)) --> [dreams].
tv(tv(eats)) --> [eats].
tv(tv(dreams)) --> [dreams].

s(Tree,[the,giraffe,dreams],X).
s(Tree,Sentence,[]).

det([le|X],X).
det([la|X],X).
n([souris|X],X).
n([chat|X],X).
v([mange|X],X).
v([trottine|X],X).

p(X,Y) :- sn(X,U), sv(U,Y).
sn(X,Y) :- det(X,U), n(U,Y).
sv(X,Y) :- v(X,Y).
sv(X,Y) :- v(X,U), sn(U,Y).
