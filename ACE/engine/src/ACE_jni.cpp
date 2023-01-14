#include "ACE_jni.hpp"
#include <string>

#ifdef __ANDROID__
#include "cheat.hpp"
#include "freeze.hpp"
#include "proc_rw.hpp"
#include "scanner.hpp"
#include <unistd.h>

extern "C" JNIEXPORT jstring JNICALL
Java_com_example_hellolibs_MainActivity_stringFromJNI(JNIEnv *env,
                                                      jobject self) {
  std::string hello = "Hello from JNI.";

  // scan self
  int pid = getpid();
  // initialize module
  ACE_scanner<int> scanner = ACE_scanner<int>(pid);
  freezer<int> freeze_manager = freezer<int>(pid);
  proc_rw<int> process_rw = proc_rw<int>(pid);
  // initialize current config
  // to be used in this session
  struct cheat_mode_config cheat_config;
  cheat_config.initial_scan_done = false;
  cheat_config.pid = pid;

  cheater_mode_on_each_input<int>(pid, &scanner, &freeze_manager, &process_rw,
                                  &cheat_config, "scan = 666");
  return env->NewStringUTF(hello.c_str());
}
#endif
