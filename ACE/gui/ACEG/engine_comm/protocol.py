

TASK_DONE_STR = "TASK_DONE\r\n"
TASK_BEGIN_STR = "TASK_BEGIN\r\n"
PROGRESS_BEGIN_STR = "PROGRESS_BEGIN\r\n"
PROGRESS_END_STR = "PROGRESS_END\r\n"

def protocol_trim_output(output: str, output_begin_str: str) -> str:
    out_begin_idx = output.find(output_begin_str)
    if out_begin_idx != -1:
        output_start_idx = out_begin_idx + len(output_begin_str)
        output = output[output_start_idx:]
    return output
