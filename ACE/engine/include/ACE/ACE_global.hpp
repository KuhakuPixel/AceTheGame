#pragma once
#include "endian.hpp"
#include "maps.hpp"
#include "scanner.hpp"
#include <string>
#include <vector>

class ACE_global {

public:
  static std::string ver_string(int major, int minor, int patch);

  static const E_endian platform_endianness;
  static const std::string platform_endianness_str;
  /*
   * list of suitable  memory region to scan for
   * */
  const static std::vector<Maps_pathname_type> mem_type_name_to_scan;

  // versions
  static const int major_version;
  static const int minor_version;
  static const int patch_level;
  // build options
  static const bool is_android_build;
  static const bool use_proc_pid_mem;
  static const bool use_proc_vm_read_writev;
  // compiler infos
  static const std::string cpp_compiler_name;
  static const std::string cpp_compiler_version;
  // license
  static const char *license;
  //
  static const char *engine_credits;
  static const char *intro_display;

  // ================ attach_client server ========================
  static const int engine_server_client_default_port;
  // publisher
  static const int status_publisher_subscriber_default_port;

private:
  // Disallow creating an instance of this object
  ACE_global(){};
};
