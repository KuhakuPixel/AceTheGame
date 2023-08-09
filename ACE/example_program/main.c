#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
int main() {

  int coin = 0;
  long long_gold = LONG_MAX - 10000;
  short short_dollar = SHRT_MAX - 10000;
  int *diamond = malloc(sizeof(int));
  char byte_count = 4;
  float float_val = 2.3122;
  *diamond = INT_MAX - 100000;
  while (true) {
    printf("current coin %p (int on stack): %d\n", &coin, coin);
    printf("current diamond %p (int on heap): %d\n", diamond, *diamond);
    printf("current gold %p (long on stack): %ld\n", &long_gold, long_gold);
    printf("current dollar %p (short on stack): %hd\n", &short_dollar,
           short_dollar);
    printf("Current byte %p: %d\n", &byte_count, byte_count);
    printf("Current float %p: %f\n", &float_val, float_val);
    printf("OUTPUT_END");
    char enter = 0;

    // until enter is pressed
    // https://stackoverflow.com/a/1406432/14073678
    while (enter != '\r' && enter != '\n') {
      enter = getchar();
    }
    coin++;
    *diamond = *diamond + 2;
    short_dollar++;
    long_gold++;
    byte_count++;
    float_val += 0.5;
  }
  return 0;
}
