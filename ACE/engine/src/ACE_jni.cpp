#include "ACE_jni.hpp"

#ifdef __ANDROID__
#include "cheat.hpp"
#include "freeze.hpp"
#include "proc_rw.hpp"
#include "scanner.hpp"
#include "server.hpp"
#include "to_frontend.hpp"
#include <string>
#include <unistd.h>

/*
 * function for initializing the ACE engine
 * when used by injector's java to be injected to another apk
 *
 * this should start a communication service (IPC) so that
 * */
void ACE_jni_init() {
  // scan self
  int pid = getpid();
  // initialize module
  ACE_scanner<int> scanner = ACE_scanner<int>(pid);
  freezer<int> freeze_manager = freezer<int>(pid);
  proc_rw<int> process_rw = proc_rw<int>(pid);
  engine_module<int> engine_module;
  //
  engine_module.scanner_ptr = &scanner;
  engine_module.freezer_ptr = &freeze_manager;
  engine_module.process_rw = &process_rw;
  // initialize current config
  // to be used in this session
  struct cheat_mode_config cheat_config;
  cheat_config.initial_scan_done = false;
  cheat_config.pid = pid;

  auto on_input_received =

      [&](std::string input_str) -> std::string {
    // reset output  buffer
    frontend_output_buff = "";
    // run input_str command
    cheater_mode_on_each_input<int>(pid, engine_module, &cheat_config,
                                    input_str);
    // get its output
    std::string out = frontend_pop_output();
    return out;
  };

  // start server
  server _server =
      server(ACE_global::engine_server_binded_address, on_input_received);
  _server.start();
}

// =================================== JNI exports for init
// ======================
extern "C" JNIEXPORT jstring JNICALL
Java_com_example_utils_InjectorCore_AceInit(JNIEnv *env, jobject self) {
  std::string hello = "Hello from JNI.";
  ACE_jni_init();
  return env->NewStringUTF(hello.c_str());
}
#endif
