listens2Music(mia).

happy(yolanda).

playsAirGuiter(mia):-
    listens2Music(mia).
playsAirGuiter(yolanda):-
    listens2Music(yolanda).

listens2Music(yolanda):-
    happy(yolanda).

vertical(line(point(X,Y),point(X,Z))).

horizontal(line(point(X,Y),point(Z,Y))).

f(a).
f(b).

g(a).
g(b).

h(b).

k(X) :-
    f(X),
    g(X),
    h(X).

house_elf(dobby).
wiOSError: [Errno 30] Read-only file system: 'category_permission_averages'tch(hermione).
witch('McGonagall').
witch(rita_skeeter).
magic(X):- house_elf(X).
magic(X):- wizard(X).
magic(X):- witch(X).

word(determiner,a).
word(determiner,every).
word(noun,criminal).
word(noun,'big kahuna burger').
word(verb,eats).
word(verb,likes).
word(astante,  a,s,t,a,n,t,e).
word(astoria,  a,s,t,o,r,i,a).
word(baratto,  b,a,r,a,t,t,o).
word(cobalto,  c,o,b,a,l,t,o).
word(pistola,  p,i,s,t,o,l,a).
word(statale,  s,t,a,t,a,l,e).

v1(Word):-
    word(Word, _, X, _, Y, _, Z, _),
    word(_, _, X, _, _, _, _, _),
    word(_, _, _, _, Y, _, _, _),
    word(_, _, _, _, _, _, Z, _).
v2(Word):-
    word(Word, _, X, _, Y, _, Z, _),
    word(_, _, X, _, _, _, _, _),
    word(_, _, _, _, Y, _, _, _),
    word(_, _, _, _, _, _, Z, _).
v3(Word):-
    word(Word, _, X, _, Y, _, Z, _),
    word(_, _, X, _, _, _, _, _),
    word(_, _, _, _, Y, _, _, _),
    word(_, _, _, _, _, _, Z, _).
h1(Word):-
    word(Word, _, X, _, Y, _, Z, _),
    word(_, _, X, _, _, _, _, _),
    word(_, _, _, _, Y, _, _, _),
    word(_, _, _, _, _, _, Z, _).
h2(Word):-
    word(Word, _, X, _, Y, _, Z, _),
    word(_, _, X, _, _, _, _, _),
    word(_, _, _, _, Y, _, _, _),
    word(_, _, _, _, _, _, Z, _).
h3(Word):- word(Word, s,t,a,t,l,e).

sentence(Word1,Word2,Word3,Word4,Word5):-
    word(determiner,Word1),
    word(noun,Word2),
    word(verb,Word3),
    word(determiner,Word4),
    word(noun,Word5).

%person(name, fater, mother, dob, sex)
person('Prince George', 'Prince William', 'Catherine', '22 Jul 2013', m).
person('Princess Charlotte', 'Prince William', 'Catherine', '2 May 2015', f).
person('Prince William', 'Prince Charles', 'Diana', '21 Jun 1982', m).
person('Prince Henry', 'Prince Charles', 'Diana', '15 Sep 1984', m).
person('Prince Charles', 'Phillip', 'Elizabeth II', '14 Nov 1948', m).
person('Elizabeth II', 'George VI', 'Elizabeth', '?', f).
person('George VI', 'George V', 'Mary of Teck', '?', m).
person('Princess Anne', 'Phillip', 'Elizabeth', '15 Aug 1950', f).
person('Mark Phillips', '?', '?', '?', m).
person('Peter Phillips', 'Princess Anne', 'Mark Phillips', '15 Nov 1977', m).
person('Zara Phillips', 'Princess Anne', 'Mark Phillips', '15 May 1981', f).
person('Savannah', 'Peter Phillips', 'Autumn Phillips', '29 Dec 2010', f).

father(X):-
    father(X,_).
father(X,Y):-
    person(X,_,_,_,m),
    person(Y,X,_,_,_).
mother(X):-
    mother(X,_).
mother(X,Y):-
    person(X,_,_,_,f),
    person(Y,_,X,_,_).
parent(X):-
    parent(X,_).
parent(X,Y):-
    father(X,Y);
    mother(X,Y).
decendent(X,Y):-
    parent(Y,X).
decendent(X,Z):- % X -> Z
    parent(Y,X),
    decendent(Y,Z).
related(X,Y):-
    decendent(X,Z),
    decendent(Y,Z).
