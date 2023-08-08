#include "ACE/main_cmd_handler.hpp"
#include "ACE/ACE_global.hpp"
#include "ACE/aslr_edit.hpp"
#include "ACE/cheat.hpp"
#include "ACE/file_utils.hpp"
#include "ACE/proc_stat.hpp"
#include "ACE/to_frontend.hpp"
#include <algorithm>
#include <unistd.h> // for getpid

void process_map_cmd_handler(int pid, bool ps_map_list_all) {

  if (!proc_is_running(pid)) {
    frontend::mark_task_fail("No processes is running with pid %d\n", pid);
    return;
  }
  std::vector<struct mem_region> proc_mem_regions = parse_proc_map(pid);

  size_t special_mapping_count = 0;
  //

  for (size_t i = 0; i < proc_mem_regions.size(); i++) {

    struct mem_region m_reg = proc_mem_regions[i];
    // by default only show special region
    if (!m_reg.is_special_region && !ps_map_list_all)
      continue;
    frontend::print("%s", m_reg.get_displayable_str().c_str());
    // count special region
    if (m_reg.is_special_region)
      special_mapping_count++;
  }

  frontend::print("------------------------------------\n");
  frontend::print("Found total of %zu mappings\n", proc_mem_regions.size());
  frontend::print("With %zu special region mapping\n", special_mapping_count);
  frontend::print("------------------------------------\n");
}

void process_name_cmd_handler(int pid) {
  std::string name = proc_get_pid_name(pid);
  frontend::print("%s\n", name.c_str());
}

void process_stat_cmd_handler(int pid) {
  proc_info p_info = get_proc_info(pid);
  std::string desc = proc_state_to_desc_map.at(p_info.state).c_str();
  frontend::print("%c: %s\n", p_info.state, desc.c_str());
}

void process_is_running_handler(int pid) {
  bool is_running = proc_is_running(pid);
  printf("%s\n", is_running ? "true" : "false");
}
void list_processes_cmd_handler(bool ps_ls_reverse) {

  std::vector<struct proc_info> processes_infos = list_processes();
  /*
   * if second's start time is bigger, then put second in front
   * of first
   *
   * https://stackoverflow.com/a/1380496/14073678
   * */
  std::sort(processes_infos.begin(), processes_infos.end(),

            [ps_ls_reverse](struct proc_info &first, struct proc_info &second) {
              if (ps_ls_reverse)
                return first.start_time > second.start_time;
              else
                return second.start_time > first.start_time;
            }

  );
  // display each of processes
  for (size_t i = 0; i < processes_infos.size(); i++) {
    frontend::print("%d %s\n", processes_infos[i].pid,
                    processes_infos[i].proc_name.c_str());
  }
}

void clear_cmd_handler() {

  // clear using escape code for unix based system
  // that is posix
  // https://stackoverflow.com/a/17271636/14073678
  frontend::print("\033[H\033[J");
}

void version_cmd_handler() {

  frontend::print("======================================\n");
  frontend::print("ACE Engine %d.%d.%d\n",

                  ACE_global::major_version, ACE_global::minor_version,
                  ACE_global::patch_level);

  frontend::print("compile time:  %s  %s\n", __DATE__, __TIME__);
  frontend::print("Compiler : %s %s\n", ACE_global::cpp_compiler_name.c_str(),
                  ACE_global::cpp_compiler_version.c_str());
  frontend::print("Endianness: %s\n",
                  ACE_global::platform_endianness_str.c_str());
  frontend::print("======================================\n");
  frontend::print("build options: \n\n\n");

  if (ACE_global::is_android_build)
    frontend::print("built for android\n");
  else
    frontend::print("built for linux desktop\n");

  frontend::print("Features included (+) or not (-): \n");

  frontend::print("%c use \"/proc/<pid>/mem\"\n",
                  ACE_global::use_proc_pid_mem ? '+' : '-');

  frontend::print("%c use process_vm_readv and process_vm_writev\n",
                  ACE_global::use_proc_vm_read_writev ? '+' : '-');

  frontend::print("======================================\n");
}

void quit_cmd_handler() { exit(EXIT_SUCCESS); };

void cheater_cmd_handler(int pid) {

  // check if <pid> is running
  if (!proc_is_running(pid)) {
    frontend::mark_task_fail("No processes is running with pid %d\n", pid);
    return;
  }

  frontend::print("attaching to process %d \n", pid);
  cheater_mode(pid);
}

void aslr_cmd_handler(bool aslr_set_val) { aslr_set(aslr_set_val); }

void gui_protocol_cmd_handler() { frontend::print("gui_protocol_ok\n"); }
// ======================================================
void display_intro() { frontend::print("%s", ACE_global::intro_display); }

void license_cmd_handler() { frontend::print("%s\n", ACE_global::license); }
void credit_cmd_handler() {
  frontend::print("%s\n", ACE_global::engine_credits);
}

void info_type_cmd_handler() {

  for (auto it = E_num_type_to_bit_size_map.begin();
       it != E_num_type_to_bit_size_map.end(); it++) {
    E_num_type num_type = it->first;
    size_t num_type_size = it->second;
    std::string num_type_str = E_num_type_to_str_map.at(num_type);
    frontend::print("%s %zu\n", num_type_str.c_str(), num_type_size);
  }
}
void info_operator_cmd_handler() {
  for (auto it = Scan_Utils::operator_str_to_E_operator_type_map.begin();
       it != Scan_Utils::operator_str_to_E_operator_type_map.end(); it++) {
    std::string operand_symbol = it->first;
    frontend::print("%s\n", operand_symbol.c_str());
  }
}
