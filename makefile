CC=gcc
LD=gcc
AR=gcc-ar
RANLIB=gcc-ranlib
CFLAGS=-Wall -O3
OBJS=rttimer.o

all: librttimer.a
	
librttimer.a: $(OBJS)
	$(AR) rcu $@ $+
	$(RANLIB) $@

clean:
	rm *.o *.a
