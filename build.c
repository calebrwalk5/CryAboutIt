#include <stdio.h>

int main() {
	printf("Compiling...\n");
	system("sudo gcc cryaboutit.c lib/func.c lib/struct.c lib/crypto.c -o bin/cryaboutit -lcrypto");
	return 0;
}
