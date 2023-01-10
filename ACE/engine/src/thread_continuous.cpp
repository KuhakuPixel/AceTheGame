#include "thread_continuous.hpp"

int thread_continuous::_start(bool thread_running) {

  // trying to start a thread that
  // hasn't been stopped
  if (thread_running)
    return -1;

  // okay
  thread = new std::thread(

      [this]() -> void {
        /*
         * continue executing when we don't receive signal
         * to stop the thread
         *
         * use a do while loop here
         * to guarantee that starting the thread
         * will execute [func] at least once
         * https://stackoverflow.com/a/56328281/14073678
         * */
        do {
          this->func();
        } while (!this->stop_thread);
      }

  );
  return 0;
}

int thread_continuous::_stop_and_free_thread(bool thread_running) {
  // no thread is running?
  // can't stop of course
  if (!thread_running)
    return -1;

  // signal to the running thread
  // to stop
  this->stop_thread = true;
  // wait for thread to exit
  this->thread->join();
  // for next starting thread
  this->stop_thread = false;
  // free resources
  delete this->thread;
  this->thread = NULL;

  return 0;
}

thread_continuous::thread_continuous(std::function<void()> func)
    : stop_thread(false), thread(NULL), thread_running(false) {
  this->func = func;
}

bool thread_continuous::get_thread_running() { return this->thread_running; }

int thread_continuous::start() {

  int ret_val = this->_start(this->thread_running);

  // mark as started
  if (ret_val == 0)
    this->thread_running = true;

  return ret_val;
}

int thread_continuous::stop() {
  int ret_val = this->_stop_and_free_thread(this->thread_running);

  // mark as stopped
  if (ret_val == 0)
    this->thread_running = false;

  return ret_val;
}

thread_continuous::thread_continuous(const thread_continuous &other)
    : stop_thread(false), thread(NULL), thread_running(false) {
  /*
   * when this object is copied
   * we want to make sure that the default constructor
   * doesn't copy pointer of thread
   *
   * because copying a pointer doesn't copy the actual value
   * its just the two object will have the same pointer
   * that point to the same value in memory, and thats
   * a big no no
   */
  // the calling function of the thread
  // should be the same when copied....
  this->func = other.func;
}
thread_continuous::~thread_continuous() {
  /*
   * caller forgot to stop thread?
   * don't worry, we got you!!!
   * */
  if (this->thread_running)
    this->stop();
}
