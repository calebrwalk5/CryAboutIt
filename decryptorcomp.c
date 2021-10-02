#include <stdio.h>
int main() {
	system("sudo gcc decryptor.c lib/struct.c lib/func.c lib/crypto.c -o bin/decryptor -lcrypto");
	return 0;
}

