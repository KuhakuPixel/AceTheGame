
## Testing core engine

to run automated tests

Note: test need sudo permission

```
$ sudo make test
# or 
$ sudo ctest
# verbose on
$ sudo ctest --verbose
```
### Testing memory leak
```
$ sudo ctest -T MemCheck
```
