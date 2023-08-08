#pragma once
#include "ace_type.hpp"
#include "proc_rw.hpp"
#include "scan_utils.hpp"
#include "thread_continuous.hpp"
#include <map>
#include <vector>

struct addr_freeze_info {
  thread_continuous th;
  ADDR address;
};

template <typename T> class freezer {
private:
  // target process's pid
  int program_pid;
  // map of the address to be freezed
  // and the thread to do them
  std::map<ADDR, thread_continuous> freeze_maps;
  proc_rw<T> *process_rw = NULL;

public:
  freezer(int program_pid);
  ~freezer();

  /*
   * freeze value of process [program_pid]
   * at address [addr]
   * */
  int freeze_addr(ADDR addr);

  /*
   * freeze value of process [program_pid]
   * at address [addr] with value [val]
   * */
  int freeze_addr_with_val(ADDR addr, T val);

  /*
   * if [addr] has been freezed previously
   * return 0 to indiciate [addr] have been unfreezed
   *        -1 to indicate failures
   *        (one cause is unfreezing[addr] even before
   *         it has been freezed)
   * */
  int unfreeze_addr(ADDR addr);

  /*
   * stop freezing all values
   * that previously have been freezed
   * */
  int stop_all();

  const std::map<ADDR, thread_continuous> &get_freeze_maps() const;

  int freeze_list(
      const std::vector<Scan_Utils::addr_and_value<T>> addresses_list);
};
