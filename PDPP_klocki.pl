%Program klocki_12
%Baza wiedzy o ukladzie klockow
%Definiowne predykaty:
%	na/2
%       pod/2
%	miedzy/3
%====================

%na(X,Y)
%opis: spełniony gdy klocek X lezy bezpośrednio na klocku Y
%-------------------------------na/2
	na(c,a).
	na(c,b).
	na(d,c).
%-------------------------------na/2
%pod(X,Y)
%opis: spełniony gdy klocek X leży bezpośrednio pod Y
%-------------------------------pod/2
	pod(X,Y):-na(Y,X).
%-------------------------------pod/2
%miedzy(X,Y,Z)
%opis: spełniony gdy X pomiedzy Y i Z
%-------------------------------miedzy/3
	miedzy(X,Y,Z):-na(Y,X),pod(Z,X).
	miedzy(X,Y,Z):-na(Z,X),pod(Y,X).
%-------------------------------miedzy/3


%	Nasz program składa się z 6 klauzul.
%	Mamy tutaj 3 definicje relacji(pod(2arg),na(3arg), między(2arg)).
%	Definicja relacji na składa się z 3 klauzul, które sa faktami.
%	Definicja relacji pod sklada sie z 1 klauzuli, ktora jest regula.
%	Definicja miedzy sklada sie z 2 klauzul, ktore sa regulami.
