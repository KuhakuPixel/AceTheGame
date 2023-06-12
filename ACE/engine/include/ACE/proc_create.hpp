/*
 * utilities to create and kill a spawned process
 * */
#pragma once

/*
 * use fork to make a child
 * that only has a busy loop
 *
 * has the same return value as a fork
 * */
int proc_fork_busy_child();
