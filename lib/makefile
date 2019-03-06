CC = gcc

default: libswap.a

libswap.a: swap.o sort.o
	ar rcs $@ $^
    
swap.o: swap.c swap.h
	$(CC) -c -fPIC $<

sort.o: sort.c sort.h
	$(CC) -c -fPIC $<

clean:
	rm -f *.o *.a *~
