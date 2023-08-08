# format cpp's project files
# creds: https://stackoverflow.com/a/36046965/14073678
# https://stackoverflow.com/a/15736463/14073678

import subprocess
import glob, os


def find_file_with_extension(dir_name: str, extensions=[]):
    files_with_extension = []
    for path, subdir, files in os.walk(dir_name):
        #
        for file_name in files:
            file_abs_path = os.path.join(path, file_name)
            # check if file has the extension and include them
            for ext in extensions:
                if file_abs_path.endswith(ext):
                    files_with_extension.append(file_abs_path)

    return files_with_extension


def format_c_cpp_dir(root_dir: str, extensions: list, dir_to_exclude: list):
    dirs = []
    # only pick directory name not in [dir_to_exclude]
    for f in os.listdir(root_dir):
        full_dir_path = os.path.join(root_dir, f)
        if os.path.isdir(full_dir_path):
            if f not in dir_to_exclude:
                dirs.append(full_dir_path)

    # format recursively for each directory in [dirs]
    for d in dirs:
        files_to_format = find_file_with_extension(dir_name=d, extensions=extensions)
        for file in files_to_format:
            # -i for inplace format
            cmd = f"clang-format -i --verbose {file}"
            subprocess.run(cmd.split(" "))


EXTENSIONS = [".cpp", ".hpp"]
DIRS_TO_EXCLUDE = ["third_party"]
format_c_cpp_dir(
    root_dir=os.getcwd(), extensions=EXTENSIONS, dir_to_exclude=DIRS_TO_EXCLUDE
)
