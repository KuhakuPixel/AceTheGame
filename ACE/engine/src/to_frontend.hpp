#pragma once
#include <functional>
#include <stdlib.h>
#include <string>

/*
 * return current frontend output 
 * made by frontend_print
 * and clear it out 
 * */
std::string frontend_pop_output();

/*
 * return current frontend output buffer
 * without clearing it
 * */
std::string frontend_peek_output();

void frontend_print(const char *fmt, ...);

/*
 * mark a task has failed
 * to frontend
 * */
void frontend_mark_task_fail(const char *fmt, ...);
/*
 * mark beggining of output for
 * frontend to pick up
 * */
void frontend_mark_task_begin();

/*
 * mark end of output for
 * frontend to pick up
 * */
void frontend_mark_task_done();

/*
 * mark a progress of a certain task
 * can be called between [frontend_mark_task_begin]
 * and [frontend_mark_task_done]
 * */
void frontend_mark_progress(size_t current, size_t max);
