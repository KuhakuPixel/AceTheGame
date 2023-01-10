# Testing

- test how well is the core engine built
and comforms to the [protocol](../gui_backend_protocol.md)

- how well the gui communicates with the engine


## Library used
test uses a python package [pexpect](https://pexpect.readthedocs.io/en/stable/)
to send input and receive output to the engine continuously
without killing the engine

ref: https://stackoverflow.com/questions/28616018/multiple-inputs-and-outputs-in-python-subprocess-communicate



## running tests
to run test 

```
cd ./ACEG/test/
# run tests
sudo ./main.py
```

