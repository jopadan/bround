#include <stdlib.h>
#include <stdio.h>
#include "bround.h"

static inline uint8_t rgb2vga(uint8_t v8) { return ubroundf(v8*63.0f/255.0f); }

int main(int argc, char** argv)
{
	for(size_t i = 0; i < 256; i++)
		printf("%hhu: %hhu\n", (uint8_t)i, rgb2vga(i));
	exit(EXIT_SUCCESS);
}
