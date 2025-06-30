#include <stdint.h>
#include <float.h>

uint8_t ubround(double x)
{
        x += (double)((1lu << (DBL_MANT_DIG - 1)) + (1lu << (DBL_MANT_DIG - 2)));
        return *(uint8_t*)&x;
}

uint8_t ubroundf(float x)
{
        x += (float)((1u   << (FLT_MANT_DIG - 1)) + (1u  << (FLT_MANT_DIG - 2)));
        return *(uint8_t*)&x;
}

int8_t bround(double x)
{
        x += (double)((1lu << (DBL_MANT_DIG - 1)) + (1lu << (DBL_MANT_DIG - 2)));
        return *(int8_t*)&x;
}

int8_t broundf(float x)
{
        x += (float)((1u   << (FLT_MANT_DIG - 1)) + (1u  << (FLT_MANT_DIG - 2)));
        return *(int8_t*)&x;
}

