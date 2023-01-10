from ACEG.utils.command import does_cmd_exist

def test_does_cmd_exist():
    # command that is guaranteed to exist
    # on every linux distro
    assert True == does_cmd_exist("ls")
    assert True == does_cmd_exist("pwd")
    assert True == does_cmd_exist("cp")
    assert True == does_cmd_exist("rm")
    assert True == does_cmd_exist("mv")
    assert True == does_cmd_exist("touch")
    assert True == does_cmd_exist("chmod")

    # of course this wouldnt exist 
    assert False == does_cmd_exist("121rwihf0wh32h0f")
    assert False == does_cmd_exist("012u0r329hqpszzr30h2")
    assert False == does_cmd_exist("239tfhdknfwijr3290")
    assert False == does_cmd_exist("039u2190-wdnxr32")
    assert False == does_cmd_exist("3902r30ihdmmz,-wdnxr32")
    assert False == does_cmd_exist("312-odwnz,z,z,z,-wdnxr32")
