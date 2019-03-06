CC = gcc

default: libswap.a

libswap.a: swap.o
	ar rcs $@ $^
    
swaps.o: swap.c swap.h
	$(CC) -c $<

clean:
	rm *.o *.a *~
