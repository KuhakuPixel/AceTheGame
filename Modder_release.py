import subprocess
import shutil
from util import assert_is_file_and_exist
import zipfile


def make_release(release_dir: str):

    PATH_TO_ZIP_BUILD = "./Modder/modder/build/distributions/modder.zip"
    # clean previous build
    subprocess.run(["./gradlew", "clean"], cwd="./Modder/")
    # generate code for injection first
    subprocess.run(["python3", "./gen_smali.py"], cwd="./Modder/injector/")
    # compile project
    subprocess.run(["./gradlew", "build"], cwd="./Modder/")

    assert_is_file_and_exist(PATH_TO_ZIP_BUILD)

    # extract zip build to [release_dir]
    with zipfile.ZipFile(PATH_TO_ZIP_BUILD, "r") as zip_ref:
        zip_ref.extractall(release_dir)
