#include <stdlib.h>
#include <stdio.h>
#include "bround.h"

static inline uint8_t rgb2vga(uint8_t v8) { return ubroundf(v8*63.0f/255.0f); }

int main(int argc, char** argv)
{
	for(uint8_t i = 0; i < 255; i++)
		printf("%hhu\n", rgb2vga(i));
	exit(EXIT_SUCCESS);
}
