#include <stdlib.h>
#include <stdio.h>
#include "bround.h"

static inline uint8_t vga2rgb(uint8_t v6) { return ubroundf(v6*255.0f/63.0f); }
static inline uint8_t shr6lvl(uint8_t v6) { v6 <<= 2; return v6 | (v6 >> 6);  }

static inline void print_term();
static inline void print_vga();

int main(int argc, char** argv)
{
	print_term();
	print_vga();
	exit(EXIT_SUCCESS);
}

static inline void print_vga()
{
	printf(" vga ");
	printf(" ");
	printf(" rgb ");
	printf(" ");
	printf(" shr ");
	printf("\n");
	for(uint8_t i = 0; i < 64; i++)
	{
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m ", 16 + i, 16 + i);
		const uint8_t rgb = vga2rgb(i);
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m ", rgb, rgb);
		const uint8_t shr = shr6lvl(i);
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m\n", shr, shr);
	}
	printf("\n");
}

static inline void print_term()
{
	for(uint8_t i = 0; i < 8; i++)
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m", i, i);
	printf("%22s"," ");
	for(uint8_t i = 232; i < 238; i++)
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m", i, i);
	printf(" ");
	for(uint8_t i = 244; i < 250; i++)
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m", i, i);
	printf("\n");
	for(uint8_t i = 8; i < 16; i++)
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m", i, i);
	printf("%22s"," ");
	for(uint8_t i = 238; i < 244; i++)
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m", i, i);
	printf(" ");
	for(uint16_t i = 250; i < 256; i++)
		printf("\x1b[48;5:%hhum %03hhu \x1b[0m", (uint8_t)i, (uint8_t)i);
	printf("\n");
	printf("\n");

	for(uint8_t i = 0; i < 6; i++)
	{
		for(uint8_t j = 0; j < 6; j++)
		{
			for(uint8_t k = 0; k < 6; k++)
			{
				const uint8_t term = 16 + 36 * j + 6 * i + k;
				printf("\x1b[48;5:%hhum %03hhu \x1b[0m", term, term);
			}
			printf(" ");
		}
		printf("\n");
	}
	printf("\n");
}
