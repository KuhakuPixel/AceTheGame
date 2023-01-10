from shutil import which


def does_cmd_exist(cmd_name: str):

    """
        check if [cmd_name] exist
    """

    return which(cmd_name) != None
