# Scanning

ACE offers flexible syntax for scanning/filtering value
much like cheat engine


There are two main commands that can be used for scanning which are:
- `scan` : 	used to scan memory against a value provided by user
		for example, pick addresses whoose value is '6', greater than '10'
		and etc

- `filter`: 	compare memory's value against its past value,
		for example, pick addresses whoose value has changed, increased, decreased and etc

more about this can be found in `scan -h` or `filter -h`


## Scanning for exact value

```
(CHEATER) scan = 3
```

## Scanning for an unknown initial value

ACE also support scanning for an unknown initial value
like cheat engine, which is useful when you want to make
something like flyhack, where you need to find player's y position
address

### initial scan
```
(CHEATER) scan ? 0
```
to pick all addresses as a match


###  pick addresses whoose value has changed 
```
(CHEATER) filter !=
```

### pick addresses whoose value has increased 
```
(CHEATER) filter >
```

### pick addresses whoose value stayed the same
```
(CHEATER) filter =
```

### pick addresses whoose value is bigger than 3
```
(CHEATER) scan > 3
```



## Put into Practice

Lets try to create a fly hack in a real game
just because we can :D

