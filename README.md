# bround
bround, broundf, broundh, ubround, ubroundf, ubroundh - mantissa overflow round to nearest un/signed byte for C23 and above

## About

```c
static inline uint8_t ubroundf(float x)
{
        x += (float)((1u   << (FLT_MANT_DIG - 1)) + (1u  << (FLT_MANT_DIG - 2)));
        return *(uint8_t*)&x;
}
static inline uint8_t ubroundh(_Float16 x)
{
        x += (_Float16)((1u   << (HALF_MANT_DIG - 1)) + (1u  << (HALF_MANT_DIG - 2)));
        return *(uint8_t*)&x;
}
```
## Example

VGA6 to RGB8 using `ubroundf` compared to SHR6

```c
#include <stdlib.h>
#include <stdio.h>
#include "bround.h"

static inline uint8_t vga2rgb(uint8_t v6) { return ubroundh(v6*255.0f16/63.0f16); }
static inline uint8_t shr6lvl(uint8_t v6) { v6 <<= 2; return v6 | (v6 >> 6);  }

int main(int argc, char** argv)
{
	printf("vga: man/shr\n");
	for(uint8_t i = 0; i < 64; i++)
		printf("%03hhu: %03hhu/%03hhu\n", i, vga2rgb(i), shr6lvl(i));
	exit(EXIT_SUCCESS);
}
```

