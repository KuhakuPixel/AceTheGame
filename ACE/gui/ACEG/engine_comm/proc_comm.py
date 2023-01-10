import pexpect
from typing import List, Tuple, Callable
from ACEG.engine_comm.protocol import *


class ProcCommunicate:
    """
    class for process communications
    following a predefined protocol
    """

    """
        call back when a progress 
        is updated
    """
    _on_progress_update = None

    def __init__(self, proc_path: str, args=""):
        self.proc_path = proc_path

        self.proc = pexpect.spawn(proc_path + " " + args)
        self.pid = self.proc.pid
        pass

    def set_on_progress_update(self, func: Callable[int, int]):
        """
        func's first argument is current value of progress
        func's second argument is the max value of progress
        """
        self._on_progress_update = func

    def _send_input(self, str_input, timeout) -> str:
        """
        send input to engine and
        get corresponding output

        """
        self.proc.sendline(str_input)
        out_str = ""
        while True:
            chosen_idx = self.proc.expect(
                [TASK_DONE_STR, PROGRESS_END_STR], timeout=timeout
            )
            # get output
            out_str = (self.proc.before).decode("utf-8")

            if chosen_idx == 0:
                # remove all strings until OUTPUT_BEGIN
                out_str = protocol_trim_output(out_str, TASK_BEGIN_STR)
                # not a progress output?
                # just stop right here
                break

            # if outputs a progress
            elif chosen_idx == 1:
                out_str = protocol_trim_output(out_str, PROGRESS_BEGIN_STR)
                # remove \r\n
                out_str = out_str.strip()
                # parse progress
                # with format like [current_val]/[max_val]
                splitted_str = out_str.split("/")
                assert len(splitted_str) == 2
                progress_current_val = int(splitted_str[0])
                progress_max_val = int(splitted_str[1])
                # call callback
                if self._on_progress_update != None:
                    self._on_progress_update(progress_current_val, progress_max_val)

        return out_str

    def send_input(self, str_input, timeout=30) -> List[str]:
        """
        send input and receive output
        lines in a list
        """
        out_str = self._send_input(str_input, timeout=timeout)
        # remove leading and trailling "\r\n" with strip
        # and split output by new line
        out_list = out_str.strip("\r\n").split("\r\n")
        # in case strips return an empty string
        # so split will also return a list with 1 empty string
        # but what we wanted is an empty list
        # TODO: find a better way, this is a temp hack
        if len(out_list) == 1 and out_list[0] == "":
            return []
        #
        return list(out_list)

    def kill(self):
        # make sure process is terminated with SIGKILL
        # https://pexpect.readthedocs.io/en/stable/api/pexpect.html#pexpect.spawn.close
        self.proc.close(force=True)
