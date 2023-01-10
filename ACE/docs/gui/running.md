## running

```
sudo ./ACEG/ace_gui.py
```

the python packages installed previously  
are at normal user's enviroments, which won't be found
by the gui when running with `sudo`

[ref](https://stackoverflow.com/questions/50315645/cannot-run-python-script-using-sudo)


### Notes

since the engine need root
running the gui also needs roots

when running python with sudo, you have to make sure
that the intreperter comes from the virtual enviroment
folder `venv/bin/python` and not a system one (for example in
`/usr/bin/python`)

running the wrong intreperter with sudo 
can cause hard to track bugs such as using the 
system's module/library instead of the virtual enviroments

this is why a shebang (`#!../venv/bin/python` for example)
is always used at the top of every main py file in this project.

of course you can specify it manually via 
sudo `./venv/bin/python <script>` but that would be 
annoying

[more info](https://askubuntu.com/questions/234758/how-to-use-a-python-virtualenv-with-sudo)


