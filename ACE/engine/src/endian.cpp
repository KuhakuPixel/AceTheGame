#include "ACE/endian.hpp"
#include "ACE/ace_type.hpp"
#include "ACE/common.hpp"
#include <climits>
#include <stdint.h>
#include <stdlib.h>

E_endian get_platform_endianness() {

  union {
    uint16_t uint16;
    uint8_t uint8;
  } endian_union;
  // c's default representation is big endian
  endian_union.uint16 = 0x0F;

  // little endian: least significant bytes are at front
  if (endian_union.uint8 == 0xF)
    return E_endian::little;
  // big endian: most significant bytes are at front
  else if (endian_union.uint8 == 0x0)
    return E_endian::big;
  else
    return E_endian::unknown;
}

template <typename T> T swap_endian(T val) {
  static_assert(CHAR_BIT == 8,
                "not supported on system where char's size is not 8 bit");

  /*
   * swap endian of [val] by swapping the bytes order
   * */

  union {
    T val;
    unsigned char bytes[sizeof(T)];
  } src, dest;

  src.val = val;

  // swap
  for (size_t i = 0; i < sizeof(T); i++)
    dest.bytes[i] = src.bytes[sizeof(T) - i - 1];

  return dest.val;
}

#define EXPLICIT_INSTANTIATE(TYPE) template TYPE swap_endian(TYPE val);
TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
