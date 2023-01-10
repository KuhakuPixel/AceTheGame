#!venv/bin/python
import pytest
from ACEG.engine_comm.proc_comm import ProcCommunicate
from ACEG.engine_comm.engine import AceEngine, FilterType, EngineErrno
from ACEG.config.engine_build_path import ABS_BUILT_ENGINE_PATH, ABS_BUILT_ACE_MOCK_PATH
from ACEG.utils.str_utils import str_is_hex


def func(x):
    return x + 1


def test_has_gui_protocol():
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    # test raw input
    outs = engine.send_input("gui_protocol")
    assert 1 == len(outs)
    assert "gui_protocol_ok" == outs[0]
    # test wrapper
    assert True == engine.has_gui_protocol()
    


def test_get_running_procs():
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))

    engine.errno = 0
    procs_list = engine.get_running_procs()
    # should have no error
    assert 0 == engine.errno
    # running processes can't be zero
    assert len(procs_list) > 0
    #  all pid retrieved must be numerics
    for proc_pid, proc_name in procs_list:
        assert True == proc_pid.isdigit()

    # but it can't list processes
    # while attached to a process
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    assert 0 == engine.attach_to_proc(mock_program.pid)

    engine.errno = 0
    procs_list = engine.get_running_procs()
    assert EngineErrno.is_attached == engine.errno


def test_attaching():
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    # shouldn't be attached to anything
    # since we haven't attached
    assert False == engine.is_attached()

    # attach to program
    assert 0 == engine.attach_to_proc(mock_program.pid)
    #
    assert True == engine.is_attached()

    # can't attach twice
    assert -1 == engine.attach_to_proc(mock_program.pid)
    assert -1 == engine.attach_to_proc(mock_program.pid)


def test_deattach():
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)

    assert 0 == engine.attach_to_proc(mock_program.pid)
    # can't attach twice
    assert -1 == engine.attach_to_proc(mock_program.pid)
    # but possible to first deattach
    # and attach again
    assert 0 == engine.deattach_from_proc()
    assert 0 == engine.attach_to_proc(mock_program.pid)
    assert 0 == engine.deattach_from_proc()
    # can't deattach twice
    assert -1 == engine.deattach_from_proc()
    pass


def test_deattach_1():
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    # can't deattach without attaching first
    assert -1 == engine.deattach_from_proc()

def test_attached_required_strict():
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)

    # test if exception is thrown when engine is not 
    # attached with pytest 
    # https://stackoverflow.com/a/29855337/14073678
    with pytest.raises(RuntimeError) as e: 
       val = engine.dummy_func_attached_required_strict()
    
    # but no error should be thrown
    # when engine is attached
    engine.attach_to_proc(mock_program.pid)
    assert engine.dummy_func_attached_required_strict() == True
    






"""
   for scan operations, there will be a parameterized 
   test to test 2 scenario:
   1  pause process while scan
   2. don't pause process while scan
   of course I can just use a loop for this, but pytest has 
   a nice decorator to support parameterized testing, so why not use 
   them :)

   ref:
    1. https://docs.pytest.org/en/7.1.x/example/parametrize.html:
       although this is a bit dense and doesn't contain simple example

    2. https://stackoverflow.com/questions/69315594/unit-testing-with-pytest-parametrize
"""

@pytest.mark.parametrize('pause_while_scan', [True, False])
def test_scan_and_write(pause_while_scan: bool):
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    # attach
    engine.attach_to_proc(mock_program.pid)
    # set engine config
    engine.config_pause_while_scan(pause_while_scan)
    #
    engine.scan(FilterType.equal, "0")
    # increment value
    mock_program.send_input("")
    engine.scan(FilterType.equal, "1")
    # increment value
    mock_program.send_input("")
    engine.scan(FilterType.equal, "2")
    # write value
    engine.write_to_matches("10000")
    # increment value
    outs = mock_program.send_input("")
    assert len(outs) == 1
    assert int(outs[0]) > 10000


@pytest.mark.parametrize('pause_while_scan', [True, False])
def test_scan_and_filter(pause_while_scan: bool):
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    # attach
    engine.attach_to_proc(mock_program.pid)
    # set engine config
    engine.config_pause_while_scan(pause_while_scan)
    #
    engine.scan(FilterType.equal, "0")
    mock_program.send_input("")
    engine.scan(FilterType.equal, "1")
    # increment value
    mock_program.send_input("")
    engine.scan(FilterType.equal, "2")
    # filter
    mock_program.send_input("")
    engine.filter(FilterType.greater)
    # filter
    mock_program.send_input("")
    engine.filter(FilterType.greater)
    engine.filter(FilterType.equal)
    engine.filter(FilterType.equal)
    # write value
    engine.write_to_matches("10000")
    # increment value
    outs = mock_program.send_input("")
    assert len(outs) == 1
    assert int(outs[0]) > 10000

@pytest.mark.parametrize('pause_while_scan', [True, False])
def test_is_attached_when_proc_dead(pause_while_scan: bool):
    #
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    #
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    #
    engine.attach_to_proc(mock_program.pid)
    # set engine config
    engine.config_pause_while_scan(pause_while_scan)
    #
    assert True == engine.is_attached()
    mock_program.kill()
    # shouldn't be attached anymore since porcess is dead
    assert False == engine.is_attached()


@pytest.mark.parametrize('pause_while_scan', [True, False])
def test_proc_dead_when_scanning(pause_while_scan: bool):
    #
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    #
    engine.attach_to_proc(mock_program.pid)
    # set engine config
    engine.config_pause_while_scan(pause_while_scan)
    #
    #
    engine.errno = 0
    engine.scan(FilterType.equal, "0")
    assert engine.errno == 0
    # increment value
    mock_program.send_input("")
    #
    engine.errno = 0
    engine.scan(FilterType.equal, "1")
    assert engine.errno == 0
    mock_program.kill()
    # program is dead can't do anymore scan
    # do it twice, to check if it should throws
    # the error
    engine.errno = 0
    engine.scan(FilterType.equal, "1")
    assert engine.errno == EngineErrno.no_attach

    engine.errno = 0
    engine.scan(FilterType.equal, "1")
    assert engine.errno == EngineErrno.no_attach

def test_list_matches():
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)

    # can't list matches while not attached
    engine.errno = 0
    engine.list_matches()
    assert engine.errno == EngineErrno.no_attach
    #
    engine.attach_to_proc(mock_program.pid)

    # scan
    engine.scan(FilterType.equal, "0")
    # program should at least contain one
    # zero values
    engine.errno = 0
    matches = engine.list_matches()
    assert len(matches) > 0
    assert engine.errno == 0
    # check content of matches
    for i in range(0,len(matches)):
        str_splitted = matches[i].split(" ")
        # parse 
        address = str_splitted[0]
        val = int(str_splitted[1])
        # must have exactly 2 content separated by
        # space, [address] [value]
        assert len(str_splitted) == 2
        # address must be hex of course
        assert str_is_hex(address) == True
        # all values must be zero since we 
        # scan for zero value
        assert int(val) == 0

    # increment value
    mock_program.send_input("")
    engine.scan(FilterType.equal, "1")

    engine.scan(FilterType.equal, "2")

    # now matches list should be zero
    # because we keep scaning for a different
    # value even though value in the [mock_program]
    # hasn't been incremented 
    engine.errno = 0
    assert len(engine.list_matches()) == 0
    assert engine.errno == 0

def test_reset_scan_results():
    #
    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    # cannot reset scan when
    # not attached
    engine.errno = 0
    engine.reset_scan_results()
    assert engine.errno == EngineErrno.no_attach
    # increment value
    mock_program.send_input("")
    #

def test_engine_progress_bar():

    on_progress_update_has_been_called = False

    max_val_prev = -1
    current_val_prev = -1
    def on_progress_update(current_val: int, max_val: int):
        # specify that we want to accsess
        # non global variables outside current scope
        # cause in python accsess to vars outside scope 
        # need explicit keyword like global and nonlocal
        # https://stackoverflow.com/questions/8943933/variables-declared-outside-function
        nonlocal on_progress_update_has_been_called
        nonlocal max_val_prev
        nonlocal current_val_prev
        if not on_progress_update_has_been_called:
            max_val_prev = max_val
            current_val_prev = current_val
            on_progress_update_has_been_called = True
            return

        # test that max value stays the same
        # as the first one and, progress
        # must be incremented by 1 on each call 
        # max val cannot change
        assert max_val == max_val_prev
        # progress should be increased by 1
        assert current_val == current_val_prev + 1

        # set to prev value
        current_val_prev = current_val

    engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))
    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    # set progress update callback
    # for scan
    engine.set_on_progress_update(on_progress_update)
    # attach
    engine.attach_to_proc(mock_program.pid)
    # scan
    engine.scan(FilterType.equal, "0")
