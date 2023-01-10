# handles communications with backend
import os
from typing import List, Tuple
from enum import Enum
from ACEG.utils.extended_enum import ExtendedEnum
from ACEG.engine_comm.proc_comm import ProcCommunicate


class FilterType(ExtendedEnum):
    greater = 0
    less = 1
    equal = 2
    greater_equal = 3
    less_equal = 4
    not_equal = 5


class EngineErrno(Enum):
    no_error = 0
    """
        set when a function that must be attached  
        when called is callled when the engine is not 
        attached to a program
    """
    no_attach = 1

    """
        set when a function that must not be attached
        when called is called while the engine is attached
        to a program

    """
    is_attached = 2


engine_errno_maps = {
    EngineErrno.no_error: "no error",
    EngineErrno.no_attach: "Engine must be attached to a process when doing this operation",
    EngineErrno.is_attached: "Engine must not be attached to any process when doing this operation",
}


def EngineErrno_str(engine_errno: EngineErrno) -> str:
    """
    get error string message  for [engine_errno]
    """
    if engine_errno not in engine_errno_maps:
        raise NotImplementedError(
            "No error string for EngineErrno %s", str(engine_errno)
        )

    return engine_errno_maps[engine_errno]


class AceEngine(ProcCommunicate):

    MAX_ADDRESS_LIST_COUNT = 5000
    # scan timeout
    SCAN_TIMEOUT_IN_SEC = 3600
    errno = EngineErrno.no_error

    operator_symbols_dict = {
        FilterType.greater: ">",
        FilterType.less: "<",
        FilterType.equal: "=",
        FilterType.greater_equal: ">=",
        FilterType.less: "<",
        FilterType.less_equal: "<=",
        FilterType.not_equal: "!=",
    }

    def __init__(self, proc_path: str):
        # turn on engine's gui protocol
        super().__init__(proc_path, args="--use-gui-protocol true")

    def attach_to_proc(self, pid: int) -> int:
        """
        attach the engine to [pid]
        returns 0 on succsess
                -1 on failure
        """
        # engine can't be attached
        # without first deattaching first
        if self.is_attached():
            return -1
        # try to attach
        output_lines = self.send_input("cheater %d" % (pid))
        # check for error
        if len(output_lines) > 0:
            # fail to attach
            if output_lines[0] == "FAIL":
                return -1
        return 0

    def deattach_from_proc(self):
        # engine can't be deattached
        # without first attaching first
        if not self.is_attached():
            return -1

        # exit cheater mode
        output_lines = self.send_input("quit")
        # check for error
        if len(output_lines) > 0:
            # fail to attach
            if output_lines[0] == "FAIL":
                return -1
        return 0

    def is_attached(self) -> bool:
        """
        check if engine is attached
        """
        output_lines = self.send_input("attached")
        assert len(output_lines) >= 1

        # fails because
        # a previously attached process is killed
        if output_lines[0] == "FAIL":
            return False

        if output_lines[0] == "attached_ok":
            return True
        elif output_lines[0] == "attached_none":
            return False
        else:
            raise RuntimeError(
                'unexpected output from "attached" command: %s' % (output_lines[0])
            )

    def attached_required(f):
        """
            require engine to be attached
            before calling [f]

            if no attach, no error is thrown
            but caller can check [self.errno]
            if an errno has been set

            errno other than 0 means an error
            occured
        """

        def wrapper(self, *args, **kwargs):
            # check if engine is attached to
            # a program before calling function
            if not self.is_attached():
                self.errno = EngineErrno.no_attach
                return
            return f(self, *args, **kwargs)

        # return wrapped functon
        return wrapper

    def attached_required_strict(f):
        """
        throws error if engine is not
        attached, this is useful when error
        must not be silent
        """

        def wrapper(self, *args, **kwargs):
            # check if engine is attached to
            # a program before calling function
            if not self.is_attached():
                self.errno = EngineErrno.no_attach
                raise RuntimeError(
                    "engine needs to be attaced to perform this operation"
                )

                return
            return f(self, *args, **kwargs)

        # return wrapped functon
        return wrapper

    def no_attached_required(f):
        def wrapper(self, *args, **kwargs):
            # check if engine is not attached to
            # a program before calling function
            if self.is_attached():
                self.errno = EngineErrno.is_attached
                return
            return f(self, *args, **kwargs)

        # return wrapped functon
        return wrapper

    @attached_required_strict
    def dummy_func_attached_required_strict(self) -> bool:
        """
            just a dummy function that 
            requires the engine to be
            attached

            return true on succsess
            
        """
        return True


    def has_gui_protocol(self) -> bool:
        output_lines = self.send_input("gui_protocol")
        assert len(output_lines) == 1
        return output_lines[0] == "gui_protocol_ok"

    @no_attached_required
    def get_running_procs(self) -> List[Tuple[str, str]]:

        """
        returns: list of tuple (pid, process_name)
                 of running processes in current
                 device
        """

        proc_running_list = []
        # request for all running processes
        output_lines = self.send_input("ps ls --reverse")

        # parse outputs
        for i in range(0, len(output_lines)):
            current_proc_str = output_lines[i]
            if len(current_proc_str) == 0:
                continue

            #
            space_idx = current_proc_str.index(" ")
            # bad output, just skip
            if space_idx == -1:
                continue
            # get proc_pid and proc_name
            proc_pid = current_proc_str[:space_idx]
            proc_name = current_proc_str[space_idx:]
            proc_running_list.append((proc_pid, proc_name))
        #
        return proc_running_list

    @attached_required
    def scan(self, filter_operator: FilterType, val: str):
        operator_str = self.operator_symbols_dict[filter_operator]
        output_lines = self.send_input(
            "scan %s %s" % (operator_str, val), timeout=self.SCAN_TIMEOUT_IN_SEC
        )

    @attached_required
    def filter(self, filter_operator: FilterType):
        operator_str = self.operator_symbols_dict[filter_operator]
        output_lines = self.send_input(
            "filter %s" % (operator_str), timeout=self.SCAN_TIMEOUT_IN_SEC
        )

    @attached_required
    def reset_scan_results(self):
        output_lines = self.send_input("reset")

    @attached_required
    def write_to_matches(self, val):
        output_lines = self.send_input("write %s" % (val))

    @attached_required
    def write_at_address(self, address, val):
        output_lines = self.send_input("writeat %s %s" % (address, val))

    @attached_required
    def list_matches(self) -> List[str]:
        """
        return a list of string of matches
               where the string is formatted like
               [address] [value]

        """
        output_lines = self.send_input(
            "list --max-count %d" % (self.MAX_ADDRESS_LIST_COUNT)
        )

        return output_lines

    @attached_required
    def get_match_count(self) -> int:
        output_lines = self.send_input("matchcount")
        assert (len(output_lines) == 1) and output_lines[0].isdigit()
        return int(output_lines[0])

    @attached_required_strict
    def config_pause_while_scan(self, val: bool):
        # TODO: make a class to set all kind of config
        # for this class
        output_lines = self.send_input("config pause_while_scan %s" % (str(val)))
        # when a setting is set, engine shouldn't output
        # anything, like unix philosophy "succsess should be quiet"
        assert len(output_lines) == 0
