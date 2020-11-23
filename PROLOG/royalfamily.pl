p(edward7, george5).
p(victoria,edward7).
p(alexandra, george5).
p(george6, elisabeth2).
p(george5, george6).
g(X,Y):-p(X,Z),p(Z,Y).
