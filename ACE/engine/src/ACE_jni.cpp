#include "ACE_jni.hpp"
#include <string>

#ifdef __ANDROID__
extern "C" JNIEXPORT jstring JNICALL
Java_com_example_hellolibs_MainActivity_stringFromJNI(JNIEnv *env,
                                                      jobject self) {
  std::string hello = "Hello from JNI.";
  return env->NewStringUTF(hello.c_str());
}
#endif
