/*
 * for enabling or disabling aslr (address space layour randomization)
 * in a linux based system by writting to /proc/sys/kernel/randomize_va_space
 *
 * /proc/sys/kernel/randomize_va_space (since Linux 2.6.12)
 *        Select the address space layout randomization (ASLR)
 *        policy for the system (on architectures that support
 *        ASLR).  Three values are supported for this file:

 *        0  Turn ASLR off.  This is the default for architectures
 *           that don't support ASLR, and when the kernel is booted
 *           with the norandmaps parameter.

 *        1  Make the addresses of mmap(2) allocations, the stack,
 *           and the VDSO page randomized.  Among other things, this
 *           means that shared libraries will be loaded at
 *           randomized addresses.  The text segment of PIE-linked
 *           binaries will also be loaded at a randomized address.
 *           This value is the default if the kernel was configured
 *           with CONFIG_COMPAT_BRK.

 *        2  (Since Linux 2.6.25) Also support heap randomization.
 *           This value is the default if the kernel was not
 *           configured with CONFIG_COMPAT_BRK.
 *
 * references:
 * - https://en.wikipedia.org/wiki/Address_space_layout_randomization
 * - https://askubuntu.com/a/318476/1348774
 * - https://man7.org/linux/man-pages/man5/proc.5.html
 * */
#pragma once
#include <string>
/*
 * turn on full ASLR if [value] is true
 * otherwise turn it off
 * */
void aslr_set(bool value);

/*
 * file for controlling the ASLR level in
 * system
 * */
const char aslr_control_file[] = "/proc/sys/kernel/randomize_va_space";
