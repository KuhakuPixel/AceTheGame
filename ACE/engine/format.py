# format cpp's project files
# creds: https://stackoverflow.com/a/36046965/14073678
# https://stackoverflow.com/a/15736463/14073678

import subprocess
import glob, os


def find_file_with_extension(dir_name:str, extensions=[]):
    files = []
    for file in os.listdir(dir_name):
        file_abs_path = os.path.abspath(os.path.join(dir_name, file))
        for ext in extensions:
            if file_abs_path.endswith(ext):
                # print("formatting: " + file_abs_path)
                files.append(file_abs_path)

    return files


def format_c_cpp_dir(dir_name: str):
    extensions = [".cpp", ".hpp"]
    files_to_format = find_file_with_extension(dir_name=dir_name,extensions=extensions)

    for file in files_to_format:
        # -i for inplace format
        cmd = f"clang-format -i --verbose {file}"
        subprocess.run(cmd.split(" "))



dirs_to_format = ["./src/", "./client/", "./test/"]
for _dir in dirs_to_format:
    format_c_cpp_dir(_dir)
