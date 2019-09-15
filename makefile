myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o myfunc.h

main.o: main.cpp
	g++  $(CFLAGS) -c main.cpp

myfunc.o: myfunc.cpp
	g++ $(CFLAGS) -c myfunc.cpp

clean:
	rm -f *.o
	rm myexe