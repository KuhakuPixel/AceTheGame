#include "aslr_edit.hpp"
#include "file_utils.hpp"
void aslr_set(bool value) {
  if (value)
    write_file(aslr_control_file, "2");
  else
    write_file(aslr_control_file, "0");
}
