pai(rai,eric).
pai(eric, italo).
pai(eric, edrick).
pai(laercio,wanessa).
pai(laercio,jane).
mae(wanessa,italo).
mae(wanessa,edrick).
mae(guia,wanessa).
mae(dora,eric).
mae(guia,jane).
pai(laercio,karime).
mae(guia, karime).
pai(laercio,flavia).
mae(guia, flavia).
pai(laercio,fabia).
mae(guia, fabia).
pai(italo, ana).
mae(barbara, ana).

% Avos por parte de pai
avo(X,Y) :- pai(X,Z), pai(Z,Y).
avo(X,Y) :- mae(X,Z), pai(Z,Y).

% Avos parte de mae
avo(X,Y) :- pai(X,Z), mae(Z,Y).
avo(X,Y) :- mae(X,Z), mae(Z,Y).

irmao(X,Y) :- pai(P,X), pai(P,Y), mae(M,X), mae(M,Y), X \= Y.

% Parte de mae
tia(X,Y) :- irmao(X,M), mae(M,Y).

% irmao(wanessa, R)
% ?- findall(R, irmao(wanessa, R), Irmaos_wanessa)
% findall(R, irmao(wanessa, R), Irmaos_wanessa), sort(Irmaos_wanessa,S)
% docker run -it --rm -v "diretorio raiz do arquivo pl":/app -w /app swipl swipl -s FamilyTree.pl