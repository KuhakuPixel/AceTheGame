#include "ACE/ACE_jni.hpp"
#include "ACE/thread_continuous.hpp"

#ifdef __ANDROID__
#include "ACE_global.hpp"
#include "engine_server.hpp"
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
  engine_server_start(pid, ACE_global::engine_server_client_default_port);
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
