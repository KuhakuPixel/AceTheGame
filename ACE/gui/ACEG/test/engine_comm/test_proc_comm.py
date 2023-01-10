from ACEG.engine_comm.proc_comm import ProcCommunicate
from ACEG.config.engine_build_path import ABS_BUILT_ENGINE_PATH, ABS_BUILT_ACE_MOCK_PATH


def test_ProcCommunicate():
    # test running a mock program"
    # each time the program is sent an input
    # it will increment its counter by one
    # first input should send output of 1

    mock_program = ProcCommunicate(ABS_BUILT_ACE_MOCK_PATH)
    for i in range(0, 3):
        outs = mock_program.send_input("")
        assert len(outs) == 1
        assert outs[0] == str(i + 1)
