all: calcul

calcul: calcul.o
	g++ calcul.o -o calcul

calcul.o: calcul.cpp
	g++ -c calcul.cpp

clean:
	rm -f *.o calcul

install: calcul
	cp -f calcul /usr/local/bin/calcul
	cp -f docs-package/calcul.1 /usr/share/man/man1/calcul.1

uninstall:
	rm -f /usr/local/bin/calcul
	rm -f /usr/share/man/man1/calcul.1