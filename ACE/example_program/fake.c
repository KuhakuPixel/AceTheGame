#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
/*
 * an example when the display value
 * is different from the actual value in memory
 *
 * an unknown value scan must be used
 * in this case
 * */
int main() {
  printf("WARN: value is faked out\n");

  int coin = 4;
  while (true) {
    printf("current coin %p (int on stack): %d\n", &coin, coin + 3);

    char enter = 0;
    // until enter is pressed
    while (enter != '\r' && enter != '\n') {
      enter = getchar();
    }
    coin++;
  }

  return 0;
}
