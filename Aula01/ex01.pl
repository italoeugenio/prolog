pai(joao, pedro).
pai(joao, maria).
pai(carlos, ana).
pai(carlos, lucas).

mae(maria, pedro).
mae(maria, maria).
mae(ana, lucas).
mae(ana, lucas).

avo(X, Y) :- pai(X, Z), pai(Z, Y).
avo(X, Y) :- mae(X, Z), mae(Z, Y).
avo(X, Y) :- pai(X, Z), mae(Z, Y).
avo(X, Y) :- mae(X, Z), pai(Z, Y).


% Regra para irmao 
irmao(X, Y) :- pai(P, X), pai(P, Y), mae(M, X), mae(M, Y), X \= Y.


% Regras para primos
primo(X, Y) :- pai(P1, X), pai(P2, Y), irmao(P1, P2).
primo(X, Y) :- mae(M1, X), mae(M2, Y), irmao(M1, M2).

% Regras para tio ou tia
tio(X, Y) :- irmao(X, P), pai(P, Y).
tia(X, Y) :- irmao(X, M), mae(M, Y).


% Regras para neto ou neta
neto(X, Y) :- pai(P, X), pai(P, Z), pai(Z, Y).
neto(X, Y) :- mae(M, X), mae(M, Z), mae(Z, Y).