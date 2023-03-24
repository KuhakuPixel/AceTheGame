import os
import shutil


def assert_is_file_and_exist(filename: str):
    if not os.path.exists(filename):
        raise FileNotFoundError(filename)
    if not os.path.isfile(filename):
        raise Exception(f"{filename} is not a file")


def assert_is_dir_and_exist(dirname: str):
    if not os.path.exists(dirname):
        raise FileNotFoundError(dirname)

    if not os.path.isdir(dirname):
        raise NotADirectoryError()(f"{dirname} is not a dir")


def mkdir_overwrite(dir_name: str):
    # remove dir first if exist previously
    if os.path.exists(dir_name) and os.path.isdir(dir_name):
        shutil.rmtree(dir_name)
    # create it
    os.makedirs(dir_name)
