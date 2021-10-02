CC=gcc
CFLAGS=-lcrypto 
OUTPUT=bin/cryaboutit
RM=rm

main: main.o crypto.o struct.o func.o
	$(CC) lib/cryaboutit.o lib/crypto.o lib/struct.o lib/func.o -o $(OUTPUT) $(CFLAGS) 

main.o: cryaboutit.c 
	$(CC) -c cryaboutit.c -o lib/cryaboutit.o

crypto.o: lib/crypto.c lib/crypto.h
	$(CC) -c lib/crypto.c -o lib/crypto.o

func.o: lib/func.c lib/func.h
	$(CC) -c lib/func.c -o lib/func.o

struct.o: lib/struct.c lib/struct.h
	$(CC) -c lib/struct.c -o lib/struct.o

clean:
	$(RM) bin/cryaboutit lib/*.o

run:
	./$(OUTPUT)
