#include "ace_type.hpp"
addr_range::addr_range(byte *addr_start, byte *addr_end) {

  this->addr_start = addr_start;
  this->addr_end = addr_end;
};

// ===========================================
void cheat_on_line_ret::set_next_scan_type(E_num_type num_type) {
  this->should_change_type = true;
  this->scan_type_to_change_to = num_type;
}

bool cheat_on_line_ret::get_should_change_type() {
  return this->should_change_type;
}

void cheat_on_line_ret::set_should_change_type(bool val) {
  this->should_change_type = val;
}

E_num_type cheat_on_line_ret::get_scan_type_to_change_to() {
  return this->scan_type_to_change_to;
}
