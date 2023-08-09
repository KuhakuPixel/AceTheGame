#include "ACE/common.hpp"

void time_action(std::function<void()> action, double *time) {
  clock_t begin = clock();
  action();
  clock_t end = clock();
  if (time != nullptr)
    *time = ((double)(end - begin) / CLOCKS_PER_SEC);
}
