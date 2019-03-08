CC = gcc

default: lib_cycodes.a

lib_cycodes.a: swap.o sort.o
	ar rcs $@ $^
    
swap.o: swap.c swap.h
	$(CC) -c -fPIC $<

sort.o: sort.c sort.h
	$(CC) -c -fPIC $<

clean:
	rm -f *.o *.a *~
