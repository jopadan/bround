#include <stdint.h>
#include <float.h>

#ifndef HALF_MANT_DIG
#define HALF_MANT_DIG 11
#endif

static inline uint8_t ubround(double x)
{
        x += (double)((1lu << (DBL_MANT_DIG - 1)) + (1lu << (DBL_MANT_DIG - 2)));
        return *(uint8_t*)&x;
}

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

static inline int8_t bround(double x)
{
        x += (double)((1lu << (DBL_MANT_DIG - 1)) + (1lu << (DBL_MANT_DIG - 2)));
        return *(int8_t*)&x;
}

static inline int8_t broundf(float x)
{
        x += (float)((1u   << (FLT_MANT_DIG - 1)) + (1u  << (FLT_MANT_DIG - 2)));
        return *(int8_t*)&x;
}

static inline int8_t broundh(_Float16 x)
{
        x += (_Float16)((1u   << (HALF_MANT_DIG - 1)) + (1u  << (HALF_MANT_DIG - 2)));
        return *(int8_t*)&x;
}
