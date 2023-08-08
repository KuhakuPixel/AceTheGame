# Unit testing  using catch2 v2

https://github.com/catchorg/Catch2/tree/v2.x

## Slow compile time
https://github.com/catchorg/Catch2/blob/v2.x/docs/slow-compiles.md#top


## How is the scanner tested

the scanner is tested using [scanner_tester.hpp][scan_test_link] 
inside [scanner.cpp](./scanner.cpp) and [scanner2.cpp](./scanner2.cpp)

by attaching the scanner to the child spawned by the [tester][scan_test_link]
using [fork][fork_link]
syscall to scan for values that are previously 
setupped by the parents in an array

then check if the matches count and the addresses that are found by the scanner
are exactly what expected

## How an address of a variable is tracked
common way to track down an addresses of the `value` of interest
is to

1. do initial scan for `value` of course there will be many
addresses that don't belong to `value`

2. next we do some `action` that we know can change that `value`
and after that `value` is changed, we scan for value
using the appropriate `filterer`

for example:
in a video game, if we have a health of 100
we can do an initial scan of `100`,

then we	do some damage to reduce the health
and scan again (based on the previous scan)
for `decremented` value

so ideally on each filter, the count of found addresses should
be ***reduced*** until the address is found



[scan_test_link]:./scanner_tester.hpp
[fork_link]:https://man7.org/linux/man-pages/man2/fork.2.html

