#include "math_util.hpp"
#include "common.hpp"

template <typename T> T pow_integral(T base, size_t power) {
  //
  if (power == 0)
    return 1;
  if (power == 1)
    return base;

  T res = 1;
  for (size_t i = 0; i < power; i++)
    res *= base;

  return res;
}

// explicit template instantiations
#define EXPLICIT_INSTANTIATE(T)                                                \
  template T pow_integral<T>(T base, size_t power);

TEMPLATE_NUMERIC_INSTANTIATE(EXPLICIT_INSTANTIATE);
#undef EXPLICIT_INSTANTIATE
