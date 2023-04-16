#include "asm.h"
#include <stdio.h>

void asm_add(char *op, int a, int b, int c) {
	printf("# %s %d %d %d\n", op, a, b, c);
}
