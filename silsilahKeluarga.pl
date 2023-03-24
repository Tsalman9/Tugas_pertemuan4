ayah(david,liza).
ayah(david,jhon).
ayah(jhon,peter).
ayah(jhon,mary).
ayah(jack,susan).
ayah(jack,ray).

ibu(amy,liza).
ibu(amy,jhon).
ibu(karen,ray).
ibu(karen,susan).
ibu(susan,peter).
ibu(susan,mary).
menikah(david,amy).
menikah(jhon,susan).
menikah(jack,karen).

is_saudara(X,Y) :- ayah(Z,Y),ayah(Z,X).
anak(Y,X) :- ayah(X,Y).
kakek_dari_ayah(X,Y) :- ayah(X,Z),ayah(Z,Y).
kakek_dari_ibu(X,Y) :- ayah(X,Z),ibu(Z,Y).
paman(X,Y) :- is_saudara(X,Z),ibu(Z,Y).
tante(X,Y) :- is_saudara(X,Z),ayah(Z,Y).
suami(X,Y) :- menikah(X,Y).
istri(X,Y) :- menikah(Y,X).


