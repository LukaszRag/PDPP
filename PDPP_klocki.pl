%Program klocki_1
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
	miedzy(X,Y,Z):-na(X,Y),pod(X,Z).
	miedzy(X,Y,Z):-na(X,Z),pod(X,Y).
%-------------------------------miedzy/3
