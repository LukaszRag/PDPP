lubi(X,Y).
jarosz(X).
niepali(X).
czytaksiazki(X).
sportowiec(X).
jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).
niepali(ola).
niepali(ewa).
niepali(jan).
czytaksiazki(ola).
czytaksiazki(iza).
czytaksiazki(piotr).
sportowiec(ola).
sportowiec(ewa).
sportowiec(piotr).
sportowiec(jan).
lubi(ola,Y):-jarosz(Y),sportowiec(Y).
lubi(ewa,Y):-jarosz(Y),niepali(Y).
lubi(iza,Y):-czytaksiazki(Y).
lubi(iza,Y):-sportowiec(Y),niepali(Y).
lubi(jan,Y):-sportowiec(Y).
lubi(piotr,Y);-sportowiec(Y),jarosz(Y).
lubi(piotr,Y):-czytaksiazki(Y).
lubi(pawel,Y);-sportowiec(Y),jarosz(Y),czytaksiazki(Y).





