#include "ACE_global.hpp"
#include "error.hpp"
#include <algorithm>
#include <errno.h>  //For waitpid()
#include <stdio.h>  //For waitpid()
#include <stdlib.h> // for atoi()
#include <string.h>
#include <sys/ptrace.h> //For ptrace()
#include <sys/wait.h>   //For waitpid()

const int ACE_global::major_version = 0;
const int ACE_global::minor_version = 1;
const int ACE_global::patch_level = 10;

const E_endian ACE_global::platform_endianness = get_platform_endianness();

const std::string ACE_global::platform_endianness_str =
    E_endian_to_str_map.at(platform_endianness);

const bool ACE_global::is_android_build =
#ifdef __ANDROID__
    true;
#else
    false;
#endif

// program will read/write to other process either
// with /proc/<pid>/mem
// or process_vm_readv and process_vm_writev

const bool ACE_global::use_proc_pid_mem =
#ifdef USE_PROC_VM_READ_WRITEV
    false;
#else
    true;
#endif

const bool ACE_global::use_proc_vm_read_writev =
#ifdef USE_PROC_VM_READ_WRITEV
    true;
#else
    false;
#endif

//
const std::vector<Maps_pathname_type> ACE_global::mem_type_name_to_scan = {
    Maps_pathname_type::heap,
    Maps_pathname_type::stack,
    Maps_pathname_type::anonymous,

};

bool ACE_global::use_gui_protocol = false;

const char *ACE_global::license =
#include "../../LICENSE_APPLIED"
    ;

const char *ACE_global::engine_credits =
#include "../credits.txt"
    ;

const char *ACE_global::intro_display =

#include "../intro.txt"
    ;

std::string ACE_global::ver_string(int major, int minor, int patch) {

  char buff[200];
  snprintf(buff, 199, "%d.%d.%d", major, minor, patch);
  return std::string(buff);
}

/*
 * get compiler information https://stackoverflow.com/a/38531037/14073678
 * */
const std::string ACE_global::cpp_compiler_name =
#ifdef __clang__
    "clang++";
#else
    "g++";
#endif

const std::string ACE_global::cpp_compiler_version =
#ifdef __clang__
    ACE_global::ver_string(__clang_major__, __clang_minor__,
                           __clang_patchlevel__);
#else
    ACE_global::ver_string(__GNUC__, __GNUC_MINOR__, __GNUC_PATCHLEVEL__);
#endif

const std::string ACE_global::engine_server_binded_address =
    "tcp://localhost:5555";
