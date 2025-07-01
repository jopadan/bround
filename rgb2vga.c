#include <stdlib.h>
#include <stdio.h>
#include "bround.h"

static inline uint8_t vga2rgb(uint8_t v6) { return ubroundf(v6*255.0f/63.0f); }
static inline uint8_t shr6lvl(uint8_t v6) { return (v6 << 2) |     (v6 >> 6); }

int main(int argc, char** argv)
{
	printf("vga: man/shr\n");
	for(uint8_t i = 0; i < 64; i++)
		printf("%03hhu: %03hhu/%03hhu\n", (uint8_t)i, vga2rgb((uint8_t)i), shr6lvl((uint8_t)i));
	exit(EXIT_SUCCESS);
}

