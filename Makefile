CC=gcc
# -O3 
CFLAGS = -g -Wall
LDFLAGS = -llo -lsndfile -lsamplerate -ljack -laubio

all: dirt

clean:
	rm -f *.o *~ dirt

dirt: dirt.o jack.o audio.o file.o server.o segment.o Makefile
	$(CC) dirt.o jack.o audio.o file.o server.o segment.o $(CFLAGS) $(LDFLAGS) -o dirt 

test : test.c Makefile
	$(CC) test.c -llo -o test