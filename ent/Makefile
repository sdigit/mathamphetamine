
#   Unix make file for random test program

CC = icc
CFLAGS = -O2 -mkl -fast -s

ent:	ent.o iso8859.o randtest.o chisq.o
	$(CC) $(CFLAGS) ent.o iso8859.o randtest.o chisq.o -o ent -lm

ent.c:	iso8859.h randtest.h

TESTFILE = entitle.gif

check:	ent
	sh entest.bat
	diff entest.mas entest.bak

lint:
	lint *.c

clean:
	rm -f *.o *.bak ent ent.zip
