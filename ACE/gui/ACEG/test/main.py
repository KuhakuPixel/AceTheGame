#!../../venv/bin/python

"""
    main py file for running the tests
"""
import pytest
import sys
import os

#TODO: input program args from user
ARGS = ["-v"]
if __name__ == "__main__":
    if os.geteuid() != 0:
        sys.exit("I NEED SUDO, PLEASE ROOT ME")

    sys.exit(pytest.main(ARGS))
