#pragma once

/*
 * std::thread wrapper that can be stopped/started
 * at any time to run a function over and over again
 * in another thread
 *
 * https://en.cppreference.com/w/cpp/thread/thread
 * https://stackoverflow.com/q/266168/14073678
 *
 * this class use an atomic boolean that will
 * be used by this class and the called thread
 * to indicate when should the thread stop
 * https://stackoverflow.com/a/56328281/14073678
 * */

#include <atomic>
#include <functional>
#include <iostream>
#include <stdlib.h>
#include <string>
#include <thread>
#include <unistd.h>

// TODO: initialize other class with initializer list
class thread_continuous {

private:
  // indicate when to stop a thread
  // this needs to be atomic
  // since it will be read by the running thread
  // and written to by this class
  std::atomic<bool> stop_thread;

  //
  std::thread *thread;

  // function that will be called continiously
  // until stopped
  std::function<void()> func;

  // indicate whether the thread has run or not
  bool thread_running;

  int _start(bool thread_running);

  int _stop_and_free_thread(bool thread_running);

public:
  thread_continuous(std::function<void()> func);
  bool get_thread_running();
  /*
   * start calling [func] continouously
   * inside a new thread. It is guaranteed
   * to call [func] at least once
   * if [thread_continuous] is started
   * and stopped immediately
   * example:
   *
   * ```
   * thread_continuous th = thread_continuous(func);
   * th.start();
   * th.stop();
   * // after [stop], [func] is at least called once
   *
   * ```
   * returns 0 if started succsessfully
   *         -1 on failure
   * */
  int start();
  /*
   * stop executing new thread
   * returns 0 if started succsessfully
   *         -1 on failure
   * */
  int stop();

  // custom copy constructor
  thread_continuous(const thread_continuous &other);
  ~thread_continuous();
};
