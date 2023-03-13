#include "ACE_jni.hpp"
#include "thread_continuous.hpp"

#ifdef __ANDROID__
#include "cheat.hpp"
#include "freeze.hpp"
#include "proc_rw.hpp"
#include "scanner.hpp"
#include "server.hpp"
#include "to_frontend.hpp"
#include <string>
#include <unistd.h>
#include "cheat_session.hpp"

/*
 * function for initializing the ACE engine
 * when used by injector's java to be injected to another apk
 *
 * this should start a communication service (IPC) so that
 * */

void ACE_jni_init() {
  // scan self
  int pid = getpid();

  cheat_session _cheat_session = cheat_session(pid, E_num_type::INT);
  // callback on each input
  auto on_input_received =

      [&](std::string input_str) -> std::string {
    // reset output  buffer to make sure
    // we won't have previous output
    frontend_output_buff = "";
    _cheat_session.on_each_input(input_str);
    // get std output from _cheat_session.on_each_input
    // function call
    std::string out = frontend_pop_output();
    return out;
  };

  // start server
  server _server =
      server(ACE_global::engine_server_binded_address, on_input_received);
  _server.start();
}

// ===================================
// JNI exports for init function that can be called
// in android apk
// https://github.com/android/ndk-samples/tree/main/hello-libs
// ======================
extern "C" JNIEXPORT jstring JNICALL
Java_com_example_utils_InjectorCore_AceInit(JNIEnv *env, jobject self) {
  std::string hello = "Hello from JNI.";
  ACE_jni_init();
  return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_AceInjector_utils_InjectorCore_AceInit(JNIEnv *env, jobject self) {
  std::string hello = "Hello from JNI.";
  ACE_jni_init();
  return env->NewStringUTF(hello.c_str());
}

#endif
