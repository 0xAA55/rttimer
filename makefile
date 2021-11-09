CC=gcc
LD=gcc
AR=gcc-ar
RANLIB=gcc-ranlib
CFLAGS=-Wall -O3 -flto -ffat-lto-objects
OBJS=rttimer.o

all: librttimer.a
	
librttimer.a: $(OBJS)
	$(AR) rc $@ $+
	$(RANLIB) $@

clean:
	rm *.o *.a
