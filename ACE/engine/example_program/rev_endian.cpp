#include "ACE/endian.hpp"
#include <stdio.h>

int main() {

  // have the real value's endianness swapped
  int coin = swap_endian<int>(3);

  printf("real value's endianness is reversed\n");
  while (true) {
    // need to swap back temporarily
    // to display correctly
    printf("current coin %p (int on stack): %d\n", &coin,
           swap_endian<int>(coin));

    char enter = 0;
    // until enter is pressed
    while (enter != '\r' && enter != '\n') {
      enter = getchar();
    }

    // swap back to normal endian to increment
    // then swap back to swapped endian afterward
    // so that the real value's endianness stays swapped
    coin = swap_endian<int>(coin) + 1;
    coin = swap_endian<int>(coin);
  }

  return 0;
}
