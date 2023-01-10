## GUI 
engine must be built first before
building gui


### setup

this doc assumes that your directory 
is `./gui` from the root project

```sh
# install virt env
python -m venv venv
# activate virt env
source venv/bin/activate
# install dependecies
pip install -r ./requirements.txt
```

#### Notes
this project install itself as a 
pip package, so make sure to run 

```
pip install -e .
```

this is done for easier `import` in the convoluted import 
system of python and allows for more readable import, 
especially a `sibling import`

more details [here](https://stackoverflow.com/a/50193944/14073678)

#### Generating new requirements
when installing a new package
one must do 

```
pip freeze > requirements.txt
```
to update `requirements.txt`

## Compiling .ui file to .py
```
pyside6-uic -o output.py input.ui
```

more info [here](https://stackoverflow.com/a/5882686/14073678)
