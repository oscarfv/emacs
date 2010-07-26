/* src/config.in.  Generated from configure.in by autoheader.  */

/* GNU Emacs site configuration template file.
   Copyright (C) 1988, 1993, 1994, 1999, 2000, 2001, 2002, 2004, 2005,
     2006, 2007, 2008, 2009, 2010  Free Software Foundation, Inc.

This file is part of GNU Emacs.

GNU Emacs is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

GNU Emacs is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.  */


/* No code in Emacs #includes config.h twice, but some bits of code
   intended to work with other packages as well (like gmalloc.c)
   think they can include it as many times as they like.  */
#ifndef EMACS_CONFIG_H
#define EMACS_CONFIG_H


/* Define to 1 if the mktime function is broken. */
#undef BROKEN_MKTIME

/* Define if Emacs cannot be dumped on your system. */
#undef CANNOT_DUMP

/* Define to one of `_getb67', `GETB67', `getb67' for Cray-2 and Cray-YMP
   systems. This function is required for `alloca.c' support on those systems.
   */
#undef CRAY_STACKSEG_END

/* Define to 1 if using `alloca.c'. */
#undef C_ALLOCA

/* Define to 1 if using `getloadavg.c'. */
#undef C_GETLOADAVG

/* Define to 1 for DGUX with <sys/dg_sys_info.h>. */
#undef DGUX

/* Define to 1 if you are using the GNU C Library. */
#undef DOUG_LEA_MALLOC

/* Define to the canonical Emacs configuration name. */
#undef EMACS_CONFIGURATION

/* Define to the options passed to configure. */
#undef EMACS_CONFIG_OPTIONS

/* Enable expensive run-time checking of data types? */
#undef ENABLE_CHECKING

/* Define this to check for errors in cons list. */
#undef GC_CHECK_CONS_LIST

/* Define this temporarily to hunt a bug. If defined, the size of strings is
   redundantly recorded in sdata structures so that it can be compared to the
   sizes recorded in Lisp strings. */
#undef GC_CHECK_STRING_BYTES

/* Define this to check the string free list. */
#undef GC_CHECK_STRING_FREE_LIST

/* Define this to check for short string overrun. */
#undef GC_CHECK_STRING_OVERRUN

/* Define to 1 if the `getloadavg' function needs to be run setuid or setgid.
   */
#undef GETLOADAVG_PRIVILEGED

/* Define to 1 if the `getpgrp' function requires zero arguments. */
#undef GETPGRP_VOID

/* Define to 1 if gettimeofday accepts only one argument. */
#undef GETTIMEOFDAY_ONE_ARGUMENT

/* Define to 1 if you want to use the GNU memory allocator. */
#undef GNU_MALLOC

/* Define to 1 if the file /usr/lpp/X11/bin/smt.exp exists. */
#undef HAVE_AIX_SMT_EXP

/* Define to 1 if you have the `alarm' function. */
#undef HAVE_ALARM

/* Define to 1 if you have `alloca', as a function or macro. */
#undef HAVE_ALLOCA

/* Define to 1 if you have <alloca.h> and it should be used (not on Ultrix).
   */
#undef HAVE_ALLOCA_H

/* Define to 1 if ALSA is available. */
#undef HAVE_ALSA

/* Define to 1 if you have the `cbrt' function. */
#undef HAVE_CBRT

/* Define to 1 if you have the `cfmakeraw' function. */
#undef HAVE_CFMAKERAW

/* Define to 1 if you have the `cfsetspeed' function. */
#undef HAVE_CFSETSPEED

/* Define to 1 if you have the `closedir' function. */
#undef HAVE_CLOSEDIR

/* Define to 1 if you have the <coff.h> header file. */
#undef HAVE_COFF_H

/* Define to 1 if you have the <com_err.h> header file. */
#undef HAVE_COM_ERR_H

/* Define to 1 if you have the `copysign' function. */
#undef HAVE_COPYSIGN

/* Define to 1 if using D-Bus. */
#undef HAVE_DBUS

/* Define to 1 if you have the `dbus_watch_get_unix_fd' function. */
#undef HAVE_DBUS_WATCH_GET_UNIX_FD

/* Define to 1 if you have the declaration of `sys_siglist', and to 0 if you
   don't. */
#undef HAVE_DECL_SYS_SIGLIST

/* Define to 1 if you have the declaration of `tzname', and to 0 if you don't.
   */
#undef HAVE_DECL_TZNAME

/* Define to 1 if you have the declaration of `__sys_siglist', and to 0 if you
   don't. */
#undef HAVE_DECL___SYS_SIGLIST

/* Define to 1 if you have the <des.h> header file. */
#undef HAVE_DES_H

/* Define to 1 if dynamic ptys are supported. */
#undef HAVE_DEV_PTMX

/* Define to 1 if you have the `difftime' function. */
#undef HAVE_DIFFTIME

/* Define to 1 if you have the `dup2' function. */
#undef HAVE_DUP2

/* Define to 1 if you have the `euidaccess' function. */
#undef HAVE_EUIDACCESS

/* Define to 1 if you have the <fcntl.h> header file. */
#undef HAVE_FCNTL_H

/* Define to 1 if you have the `fmod' function. */
#undef HAVE_FMOD

/* Define to 1 if you have the `fork' function. */
#undef HAVE_FORK

/* Define to 1 if you have the `fpathconf' function. */
#undef HAVE_FPATHCONF

/* Define to 1 if using the freetype and fontconfig libraries. */
#undef HAVE_FREETYPE

/* Define to 1 if you have the `frexp' function. */
#undef HAVE_FREXP

/* Define to 1 if fseeko (and presumably ftello) exists and is declared. */
#undef HAVE_FSEEKO

/* Define to 1 if you have the `fsync' function. */
#undef HAVE_FSYNC

/* Define to 1 if you have the `ftime' function. */
#undef HAVE_FTIME

/* Define to 1 if you have the `gai_strerror' function. */
#undef HAVE_GAI_STRERROR

/* Define to 1 if using GConf. */
#undef HAVE_GCONF

/* Define to 1 if you have the `getaddrinfo' function. */
#undef HAVE_GETADDRINFO

/* Define to 1 if you have the `getcwd' function. */
#undef HAVE_GETCWD

/* Define to 1 if you have the `getdelim' function. */
#undef HAVE_GETDELIM

/* Define to 1 if you have the `getdomainname' function. */
#undef HAVE_GETDOMAINNAME

/* Define to 1 if you have the `gethostname' function. */
#undef HAVE_GETHOSTNAME

/* Define to 1 if you have the `getline' function. */
#undef HAVE_GETLINE

/* Define to 1 if you have the `getloadavg' function. */
#undef HAVE_GETLOADAVG

/* Define to 1 if you have the <getopt.h> header file. */
#undef HAVE_GETOPT_H

/* Define to 1 if you have the `getopt_long_only' function. */
#undef HAVE_GETOPT_LONG_ONLY

/* Define to 1 if you have the `getpagesize' function. */
#undef HAVE_GETPAGESIZE

/* Define to 1 if you have the `getpeername' function. */
#undef HAVE_GETPEERNAME

/* Define to 1 if you have the `getpt' function. */
#undef HAVE_GETPT

/* Define to 1 if you have the `getrlimit' function. */
#undef HAVE_GETRLIMIT

/* Define to 1 if you have the `getrusage' function. */
#undef HAVE_GETRUSAGE

/* Define to 1 if you have the `getsockname' function. */
#undef HAVE_GETSOCKNAME

/* Define to 1 if you have the `getsockopt' function. */
#undef HAVE_GETSOCKOPT

/* Define to 1 if you have the `gettimeofday' function. */
#undef HAVE_GETTIMEOFDAY

/* Define to 1 if you have the `getwd' function. */
#undef HAVE_GETWD

/* Define to 1 if you have the `get_current_dir_name' function. */
#undef HAVE_GET_CURRENT_DIR_NAME

/* Define to 1 if you have a gif (or ungif) library. */
#undef HAVE_GIF

/* Define to 1 if you have the gpm library (-lgpm). */
#undef HAVE_GPM

/* Define to 1 if you have the `grantpt' function. */
#undef HAVE_GRANTPT

/* Define to 1 if you have the `gtk_adjustment_get_page_size' function. */
#undef HAVE_GTK_ADJUSTMENT_GET_PAGE_SIZE

/* Define to 1 if you have GTK and pthread (-lpthread). */
#undef HAVE_GTK_AND_PTHREAD

/* Define to 1 if you have the `gtk_dialog_get_action_area' function. */
#undef HAVE_GTK_DIALOG_GET_ACTION_AREA

/* Define to 1 if you have the `gtk_file_selection_new' function. */
#undef HAVE_GTK_FILE_SELECTION_NEW

/* Define to 1 if you have the `gtk_main' function. */
#undef HAVE_GTK_MAIN

/* Define to 1 if you have the `gtk_orientable_set_orientation' function. */
#undef HAVE_GTK_ORIENTABLE_SET_ORIENTATION

/* Define to 1 if you have the `gtk_widget_get_mapped' function. */
#undef HAVE_GTK_WIDGET_GET_MAPPED

/* Define to 1 if you have the `gtk_widget_get_sensitive' function. */
#undef HAVE_GTK_WIDGET_GET_SENSITIVE

/* Define to 1 if you have the `gtk_widget_get_window' function. */
#undef HAVE_GTK_WIDGET_GET_WINDOW

/* Define to 1 if you have the `gtk_widget_set_has_window' function. */
#undef HAVE_GTK_WIDGET_SET_HAS_WINDOW

/* Define to 1 if netdb.h declares h_errno. */
#undef HAVE_H_ERRNO

/* Define to 1 if you have inet sockets. */
#undef HAVE_INET_SOCKETS

/* Define to 1 if you have the <inttypes.h> header file. */
#undef HAVE_INTTYPES_H

/* Define to 1 if you have the `isnan' function. */
#undef HAVE_ISNAN

/* Define to 1 if you have the jpeg library (-ljpeg). */
#undef HAVE_JPEG

/* Define to 1 if you have the <kerberosIV/des.h> header file. */
#undef HAVE_KERBEROSIV_DES_H

/* Define to 1 if you have the <kerberosIV/krb.h> header file. */
#undef HAVE_KERBEROSIV_KRB_H

/* Define to 1 if you have the <kerberos/des.h> header file. */
#undef HAVE_KERBEROS_DES_H

/* Define to 1 if you have the <kerberos/krb.h> header file. */
#undef HAVE_KERBEROS_KRB_H

/* Define to 1 if `e_text' is a member of `krb5_error'. */
#undef HAVE_KRB5_ERROR_E_TEXT

/* Define to 1 if `text' is a member of `krb5_error'. */
#undef HAVE_KRB5_ERROR_TEXT

/* Define to 1 if you have the <krb5.h> header file. */
#undef HAVE_KRB5_H

/* Define to 1 if you have the <krb.h> header file. */
#undef HAVE_KRB_H

/* Define if you have <langinfo.h> and nl_langinfo(CODESET). */
#undef HAVE_LANGINFO_CODESET

/* Define to 1 if you have the `com_err' library (-lcom_err). */
#undef HAVE_LIBCOM_ERR

/* Define to 1 if you have the `crypto' library (-lcrypto). */
#undef HAVE_LIBCRYPTO

/* Define to 1 if you have the `des' library (-ldes). */
#undef HAVE_LIBDES

/* Define to 1 if you have the `des425' library (-ldes425). */
#undef HAVE_LIBDES425

/* Define to 1 if you have the `dgc' library (-ldgc). */
#undef HAVE_LIBDGC

/* Define to 1 if you have the `dnet' library (-ldnet). */
#undef HAVE_LIBDNET

/* Define to 1 if you have the hesiod library (-lhesiod). */
#undef HAVE_LIBHESIOD

/* Define to 1 if you have the `intl' library (-lintl). */
#undef HAVE_LIBINTL

/* Define to 1 if you have the `k5crypto' library (-lk5crypto). */
#undef HAVE_LIBK5CRYPTO

/* Define to 1 if you have the `krb' library (-lkrb). */
#undef HAVE_LIBKRB

/* Define to 1 if you have the `krb4' library (-lkrb4). */
#undef HAVE_LIBKRB4

/* Define to 1 if you have the `krb5' library (-lkrb5). */
#undef HAVE_LIBKRB5

/* Define to 1 if you have the `kstat' library (-lkstat). */
#undef HAVE_LIBKSTAT

/* Define to 1 if you have the `lockfile' library (-llockfile). */
#undef HAVE_LIBLOCKFILE

/* Define to 1 if you have the `m' library (-lm). */
#undef HAVE_LIBM

/* Define to 1 if you have the `mail' library (-lmail). */
#undef HAVE_LIBMAIL

/* Define to 1 if you have the `ncurses' library (-lncurses). */
#undef HAVE_LIBNCURSES

/* Define to 1 if using libotf. */
#undef HAVE_LIBOTF

/* Define to 1 if you have the <libpng/png.h> header file. */
#undef HAVE_LIBPNG_PNG_H

/* Define to 1 if you have the `pthreads' library (-lpthreads). */
#undef HAVE_LIBPTHREADS

/* Define to 1 if you have the resolv library (-lresolv). */
#undef HAVE_LIBRESOLV

/* Define to 1 if using SELinux. */
#undef HAVE_LIBSELINUX

/* Define to 1 if you have the `Xext' library (-lXext). */
#undef HAVE_LIBXEXT

/* Define to 1 if you have the `Xmu' library (-lXmu). */
#undef HAVE_LIBXMU

/* Define to 1 if you have the <limits.h> header file. */
#undef HAVE_LIMITS_H

/* Define to 1 if you have the <linux/version.h> header file. */
#undef HAVE_LINUX_VERSION_H

/* Define to 1 if you have the <locale.h> header file. */
#undef HAVE_LOCALE_H

/* Define to 1 if you have the `logb' function. */
#undef HAVE_LOGB

/* Define to 1 if you support file names longer than 14 characters. */
#undef HAVE_LONG_FILE_NAMES

/* Define to 1 if you have the `lrand48' function. */
#undef HAVE_LRAND48

/* Define to 1 if using libm17n-flt. */
#undef HAVE_M17N_FLT

/* Define to 1 if you have the <machine/soundcard.h> header file. */
#undef HAVE_MACHINE_SOUNDCARD_H

/* Define to 1 if you have the <mach/mach.h> header file. */
#undef HAVE_MACH_MACH_H

/* Define to 1 if you have the <maillock.h> header file. */
#undef HAVE_MAILLOCK_H

/* Define to 1 if you have the <malloc/malloc.h> header file. */
#undef HAVE_MALLOC_MALLOC_H

/* Define to 1 if you have the `mblen' function. */
#undef HAVE_MBLEN

/* Define to 1 if you have the `mbrlen' function. */
#undef HAVE_MBRLEN

/* Define to 1 if you have the `mbsinit' function. */
#undef HAVE_MBSINIT

/* Define to 1 if <wchar.h> declares mbstate_t. */
#undef HAVE_MBSTATE_T

/* Define to 1 if you have the `memcmp' function. */
#undef HAVE_MEMCMP

/* Define to 1 if you have the `memcpy' function. */
#undef HAVE_MEMCPY

/* Define to 1 if you have the `memmove' function. */
#undef HAVE_MEMMOVE

/* Define to 1 if you have the <memory.h> header file. */
#undef HAVE_MEMORY_H

/* Define to 1 if you have the `mempcpy' function. */
#undef HAVE_MEMPCPY

/* Define to 1 if you have the `memset' function. */
#undef HAVE_MEMSET

/* Define to 1 if you have mouse menus. (This is automatic if you use X, but
   the option to specify it remains.) It is also defined with other window
   systems that support xmenu.c. */
#undef HAVE_MENUS

/* Define to 1 if you have the `mkdir' function. */
#undef HAVE_MKDIR

/* Define to 1 if you have the `mkstemp' function. */
#undef HAVE_MKSTEMP

/* Define to 1 if you have the `mktime' function. */
#undef HAVE_MKTIME

/* Define to 1 if you have a working `mmap' system call. */
#undef HAVE_MMAP

/* Define if you have mouse support. */
#undef HAVE_MOUSE

/* Define to 1 if you have the `mremap' function. */
#undef HAVE_MREMAP

/* Define to 1 if you have the <net/if.h> header file. */
#undef HAVE_NET_IF_H

/* Define to 1 if you have the <nlist.h> header file. */
#undef HAVE_NLIST_H

/* Define to 1 if you are using the NeXTstep API, either GNUstep or Cocoa on
   Mac OS X. */
#undef HAVE_NS

/* Define to 1 if libotf has OTF_get_variation_glyphs. */
#undef HAVE_OTF_GET_VARIATION_GLYPHS

/* Define to 1 if personality LINUX32 can be set. */
#undef HAVE_PERSONALITY_LINUX32

/* Define to 1 if you have the png library (-lpng). */
#undef HAVE_PNG

/* Define to 1 if you have the <png.h> header file. */
#undef HAVE_PNG_H

/* Define to 1 if you have the `posix_memalign' function. */
#undef HAVE_POSIX_MEMALIGN

/* Define to 1 if you have the `pstat_getdynamic' function. */
#undef HAVE_PSTAT_GETDYNAMIC

/* Define to 1 if you have the <pthread.h> header file. */
#undef HAVE_PTHREAD_H

/* Define to 1 if you have the <pty.h> header file. */
#undef HAVE_PTY_H

/* Define to 1 if you have the <pwd.h> header file. */
#undef HAVE_PWD_H

/* Define to 1 if you have the `random' function. */
#undef HAVE_RANDOM

/* Define to 1 if you have the `recvfrom' function. */
#undef HAVE_RECVFROM

/* Define to 1 if you have the `rename' function. */
#undef HAVE_RENAME

/* Define to 1 if res_init is available. */
#undef HAVE_RES_INIT

/* Define to 1 if you have the `rint' function. */
#undef HAVE_RINT

/* Define to 1 if you have the `rmdir' function. */
#undef HAVE_RMDIR

/* Define to 1 if using librsvg. */
#undef HAVE_RSVG

/* Define to 1 if you have the `select' function. */
#undef HAVE_SELECT

/* Define to 1 if you have the `sendto' function. */
#undef HAVE_SENDTO

/* Define to 1 if you have the `setitimer' function. */
#undef HAVE_SETITIMER

/* Define to 1 if you have the `setlocale' function. */
#undef HAVE_SETLOCALE

/* Define to 1 if you have the `setpgid' function. */
#undef HAVE_SETPGID

/* Define to 1 if you have the `setrlimit' function. */
#undef HAVE_SETRLIMIT

/* Define to 1 if you have the `setsid' function. */
#undef HAVE_SETSID

/* Define to 1 if you have the `setsockopt' function. */
#undef HAVE_SETSOCKOPT

/* Define to 1 if you have the `shutdown' function. */
#undef HAVE_SHUTDOWN

/* Define to 1 if the system has the type `size_t'. */
#undef HAVE_SIZE_T

/* Define to 1 if you have sound support. */
#undef HAVE_SOUND

/* Define to 1 if you have the <soundcard.h> header file. */
#undef HAVE_SOUNDCARD_H

/* Define to 1 if `speed_t' is declared by <termios.h>. */
#undef HAVE_SPEED_T

/* Define to 1 if you have the <stdint.h> header file. */
#undef HAVE_STDINT_H

/* Define to 1 if you have the <stdio_ext.h> header file. */
#undef HAVE_STDIO_EXT_H

/* Define to 1 if you have the <stdlib.h> header file. */
#undef HAVE_STDLIB_H

/* Define to 1 if you have the `strchr' function. */
#undef HAVE_STRCHR

/* Define to 1 if you have the `strerror' function. */
#undef HAVE_STRERROR

/* Define to 1 if you have the `strftime' function. */
#undef HAVE_STRFTIME

/* Define to 1 if you have the <strings.h> header file. */
#undef HAVE_STRINGS_H

/* Define to 1 if you have the <string.h> header file. */
#undef HAVE_STRING_H

/* Define to 1 if you have the `strrchr' function. */
#undef HAVE_STRRCHR

/* Define to 1 if you have the `strsignal' function. */
#undef HAVE_STRSIGNAL

/* Define to 1 if `ifr_addr' is a member of `struct ifreq'. */
#undef HAVE_STRUCT_IFREQ_IFR_ADDR

/* Define to 1 if `ifr_broadaddr' is a member of `struct ifreq'. */
#undef HAVE_STRUCT_IFREQ_IFR_BROADADDR

/* Define to 1 if `ifr_flags' is a member of `struct ifreq'. */
#undef HAVE_STRUCT_IFREQ_IFR_FLAGS

/* Define to 1 if `ifr_hwaddr' is a member of `struct ifreq'. */
#undef HAVE_STRUCT_IFREQ_IFR_HWADDR

/* Define to 1 if `ifr_netmask' is a member of `struct ifreq'. */
#undef HAVE_STRUCT_IFREQ_IFR_NETMASK

/* Define to 1 if `n_un.n_name' is a member of `struct nlist'. */
#undef HAVE_STRUCT_NLIST_N_UN_N_NAME

/* Define to 1 if `tm_zone' is a member of `struct tm'. */
#undef HAVE_STRUCT_TM_TM_ZONE

/* Define to 1 if `struct utimbuf' is declared by <utime.h>. */
#undef HAVE_STRUCT_UTIMBUF

/* Define to 1 if you have the `sync' function. */
#undef HAVE_SYNC

/* Define to 1 if you have the `sysinfo' function. */
#undef HAVE_SYSINFO

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#undef HAVE_SYS_IOCTL_H

/* Define to 1 if you have the <sys/mman.h> header file. */
#undef HAVE_SYS_MMAN_H

/* Define to 1 if you have the <sys/param.h> header file. */
#undef HAVE_SYS_PARAM_H

/* Define to 1 if you have the <sys/resource.h> header file. */
#undef HAVE_SYS_RESOURCE_H

/* Define to 1 if you have the <sys/select.h> header file. */
#undef HAVE_SYS_SELECT_H

/* Define to 1 if you have the <sys/socket.h> header file. */
#undef HAVE_SYS_SOCKET_H

/* Define to 1 if you have the <sys/soundcard.h> header file. */
#undef HAVE_SYS_SOUNDCARD_H

/* Define to 1 if you have the <sys/stat.h> header file. */
#undef HAVE_SYS_STAT_H

/* Define to 1 if you have the <sys/systeminfo.h> header file. */
#undef HAVE_SYS_SYSTEMINFO_H

/* Define to 1 if you have the <sys/timeb.h> header file. */
#undef HAVE_SYS_TIMEB_H

/* Define to 1 if you have the <sys/time.h> header file. */
#undef HAVE_SYS_TIME_H

/* Define to 1 if you have the <sys/types.h> header file. */
#undef HAVE_SYS_TYPES_H

/* Define to 1 if you have the <sys/un.h> header file. */
#undef HAVE_SYS_UN_H

/* Define to 1 if you have the <sys/utsname.h> header file. */
#undef HAVE_SYS_UTSNAME_H

/* Define to 1 if you have the <sys/vlimit.h> header file. */
#undef HAVE_SYS_VLIMIT_H

/* Define to 1 if you have <sys/wait.h> that is POSIX.1 compatible. */
#undef HAVE_SYS_WAIT_H

/* Define to 1 if you have the <sys/_mbstate_t.h> header file. */
#undef HAVE_SYS__MBSTATE_T_H

/* Define to 1 if you have the <termios.h> header file. */
#undef HAVE_TERMIOS_H

/* Define to 1 if you have the <term.h> header file. */
#undef HAVE_TERM_H

/* Define to 1 if you have the tiff library (-ltiff). */
#undef HAVE_TIFF

/* Define to 1 if `struct timeval' is declared by <sys/time.h>. */
#undef HAVE_TIMEVAL

/* Define to 1 if `tm_gmtoff' is member of `struct tm'. */
#undef HAVE_TM_GMTOFF

/* Define to 1 if your `struct tm' has `tm_zone'. Deprecated, use
   `HAVE_STRUCT_TM_TM_ZONE' instead. */
#undef HAVE_TM_ZONE

/* Define to 1 if you have the `touchlock' function. */
#undef HAVE_TOUCHLOCK

/* Define to 1 if you don't have `tm_zone' but do have the external array
   `tzname'. */
#undef HAVE_TZNAME

/* Define to 1 if you have the `tzset' function. */
#undef HAVE_TZSET

/* Define to 1 if you have the `ualarm' function. */
#undef HAVE_UALARM

/* Define to 1 if you have the <unistd.h> header file. */
#undef HAVE_UNISTD_H

/* Define to 1 if you have the `utimes' function. */
#undef HAVE_UTIMES

/* Define to 1 if you have the <utime.h> header file. */
#undef HAVE_UTIME_H

/* Define to 1 if you have the <utmp.h> header file. */
#undef HAVE_UTMP_H

/* Define to 1 if you have the `vfork' function. */
#undef HAVE_VFORK

/* Define to 1 if you have the <vfork.h> header file. */
#undef HAVE_VFORK_H

/* Define if you have a window system. */
#undef HAVE_WINDOW_SYSTEM

/* Define to 1 if `fork' works. */
#undef HAVE_WORKING_FORK

/* Define to 1 if `vfork' works. */
#undef HAVE_WORKING_VFORK

/* Define to 1 if you want to use version 11 of X windows. Otherwise, Emacs
   expects to use version 10. */
#undef HAVE_X11

/* Define to 1 if you have the X11R6 or newer version of Xlib. */
#undef HAVE_X11R6

/* Define if you have usable X11R6-style XIM support. */
#undef HAVE_X11R6_XIM

/* Define to 1 if you have the X11R6 or newer version of Xt. */
#undef HAVE_X11XTR6

/* Define to 1 if you have the Xaw3d library (-lXaw3d). */
#undef HAVE_XAW3D

/* Define to 1 if you have the Xft library. */
#undef HAVE_XFT

/* Define to 1 if XIM is available */
#undef HAVE_XIM

/* Define to 1 if you have the XkbGetKeyboard function. */
#undef HAVE_XKBGETKEYBOARD

/* Define to 1 if you have the Xpm libary (-lXpm). */
#undef HAVE_XPM

/* Define to 1 if you have the `XrmSetDatabase' function. */
#undef HAVE_XRMSETDATABASE

/* Define to 1 if you have the `XScreenNumberOfScreen' function. */
#undef HAVE_XSCREENNUMBEROFSCREEN

/* Define to 1 if you have the `XScreenResourceString' function. */
#undef HAVE_XSCREENRESOURCESTRING

/* Define to 1 if you have the `XSetWMProtocols' function. */
#undef HAVE_XSETWMPROTOCOLS

/* Define if you have usable i18n support. */
#undef HAVE_X_I18N

/* Define to 1 if you have the SM library (-lSM). */
#undef HAVE_X_SM

/* Define to 1 if you want to use the X window system. */
#undef HAVE_X_WINDOWS

/* Define to 1 if you have the `__fpending' function. */
#undef HAVE___FPENDING

/* Define to support using a Hesiod database to find the POP server. */
#undef HESIOD

/* Define to support Kerberos-authenticated POP mail retrieval. */
#undef KERBEROS

/* Define to use Kerberos 5 instead of Kerberos 4. */
#undef KERBEROS5

/* Define to 1 if localtime caches TZ. */
#undef LOCALTIME_CACHE

/* String giving fallback POP mail host. */
#undef MAILHOST

/* Define to unlink, rather than empty, mail spool after reading. */
#undef MAIL_UNLINK_SPOOL

/* Define if the mailer uses flock to interlock the mail spool. */
#undef MAIL_USE_FLOCK

/* Define if the mailer uses lockf to interlock the mail spool. */
#undef MAIL_USE_LOCKF

/* Define to support MMDF mailboxes in movemail. */
#undef MAIL_USE_MMDF

/* Define to support POP mail retrieval. */
#undef MAIL_USE_POP

/* Define to 1 if your `struct nlist' has an `n_un' member. Obsolete, depend
   on `HAVE_STRUCT_NLIST_N_UN_N_NAME */
#undef NLIST_NAME_UNION

/* Define to 1 if you don't have struct exception in math.h. */
#undef NO_MATHERR

/* Define to 1 if `NSInteger' is defined. */
#undef NS_HAVE_NSINTEGER

/* Define to 1 if you are using NS windowing under MacOS X. */
#undef NS_IMPL_COCOA

/* Define to 1 if you are using NS windowing under GNUstep. */
#undef NS_IMPL_GNUSTEP

/* Define if the C compiler is the linker. */
#undef ORDINARY_LINK

/* Define to the address where bug reports for this package should be sent. */
#undef PACKAGE_BUGREPORT

/* Define to the full name of this package. */
#undef PACKAGE_NAME

/* Define to the full name and version of this package. */
#undef PACKAGE_STRING

/* Define to the one symbol short name of this package. */
#undef PACKAGE_TARNAME

/* Define to the home page for this package. */
#undef PACKAGE_URL

/* Define to the version of this package. */
#undef PACKAGE_VERSION

/* Define as `void' if your compiler accepts `void *'; otherwise define as
   `char'. */
#undef POINTER_TYPE

/* Define to 1 if the C compiler supports function prototypes. */
#undef PROTOTYPES

/* Define REL_ALLOC if you want to use the relocating allocator for buffer
   space. */
#undef REL_ALLOC

/* Define as the return type of signal handlers (`int' or `void'). */
#undef RETSIGTYPE

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown */
#undef STACK_DIRECTION

/* Define to 1 if you have the ANSI C header files. */
#undef STDC_HEADERS

/* Define to 1 on System V Release 4. */
#undef SVR4

/* Process async input synchronously. */
#undef SYNC_INPUT

/* Define to use system malloc. */
#undef SYSTEM_MALLOC

/* Define to 1 if you use terminfo instead of termcap. */
#undef TERMINFO

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#undef TIME_WITH_SYS_TIME

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
#undef TM_IN_SYS_TIME

/* Define to 1 for Encore UMAX. */
#undef UMAX

/* Define to 1 for Encore UMAX 4.3 that has <inq_status/cpustats.h> instead of
   <sys/cpustats.h>. */
#undef UMAX4_3

/* Define to 1 if using GTK. */
#undef USE_GTK

/* Define this to use a lisp union for the Lisp_Object data type. */
#undef USE_LISP_UNION_TYPE

/* Define to 1 if using the Lucid X toolkit. */
#undef USE_LUCID

/* Define to use mmap to allocate buffer text. */
#undef USE_MMAP_FOR_BUFFERS

/* Define to 1 if using the Motif X toolkit. */
#undef USE_MOTIF

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# undef _ALL_SOURCE
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
# undef _GNU_SOURCE
#endif
/* Enable threading extensions on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
# undef _POSIX_PTHREAD_SEMANTICS
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# undef _TANDEM_SOURCE
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# undef __EXTENSIONS__
#endif


/* Define to 1 if we should use toolkit scroll bars. */
#undef USE_TOOLKIT_SCROLL_BARS

/* Define to 1 if we should use XIM, if it is available. */
#undef USE_XIM

/* Define to 1 if using an X toolkit. */
#undef USE_X_TOOLKIT

/* Define this to check for malloc buffer overrun. */
#undef XMALLOC_OVERRUN_CHECK

/* Define to the type of the 6th arg of XRegisterIMInstantiateCallback, either
   XPointer or XPointer*. */
#undef XRegisterIMInstantiateCallback_arg6

/* Number of bits in a file offset, on hosts where this is settable. */
#undef _FILE_OFFSET_BITS

/* Define to 1 to make fseeko visible on some hosts (e.g. glibc 2.2). */
#undef _LARGEFILE_SOURCE

/* Define for large files, on AIX-style hosts. */
#undef _LARGE_FILES

/* Define to 1 if on MINIX. */
#undef _MINIX

/* Define to 2 if the system does not provide POSIX.1 features except with
   this defined. */
#undef _POSIX_1_SOURCE

/* Define to 1 if you need to in order for `stat' and other things to work. */
#undef _POSIX_SOURCE

/* Define to rpl_ if the getopt replacement functions and variables should be
   used. */
#undef __GETOPT_PREFIX

/* Define like PROTOTYPES; this can be used by system headers. */
#undef __PROTOTYPES

/* Define to compiler's equivalent of C99 restrict keyword. Don't define if
   equivalent is `__restrict'. */
#undef __restrict

/* Define to compiler's equivalent of C99 restrict keyword in array
   declarations. Define as empty for no equivalent. */
#undef __restrict_arr

/* Define to the used machine dependent file. */
#undef config_machfile

/* Define to the used os dependent file. */
#undef config_opsysfile

/* Define to empty if `const' does not conform to ANSI C. */
#undef const

/* Define to a type if <wchar.h> does not define. */
#undef mbstate_t

/* Define to `int' if <sys/types.h> does not define. */
#undef pid_t

/* Define to any substitute for sys_siglist. */
#undef sys_siglist

/* Define as `fork' if `vfork' does not work. */
#undef vfork

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
#undef volatile


/* Define AMPERSAND_FULL_NAME if you use the convention
   that & in the full name stands for the login id.  */
/* Turned on June 1996 supposing nobody will mind it.  */
#define AMPERSAND_FULL_NAME

/* If using GNU, then support inline function declarations.  */
/* Don't try to switch on inline handling as detected by AC_C_INLINE
   generally, because even if non-gcc compilers accept `inline', they
   may reject `extern inline'.  */
#if defined (__GNUC__) && defined (OPTIMIZE)
#define INLINE __inline__
#else
#define INLINE
#endif

/* `subprocesses' should be defined if you want to
   have code for asynchronous subprocesses
   (as used in M-x compile and M-x shell).
   Only MSDOS does not support this (it overrides
   this in its config_opsysfile below).  */

#define subprocesses

/* Include the os and machine dependent files.  */
#include config_opsysfile
#include config_machfile

/* Set up some defines, C and LD flags for NeXTstep interface on GNUstep.
  (There is probably a better place to do this, but right now the Cocoa
   side does this in s/darwin.h and we cannot
   parallel this exactly since GNUstep is multi-OS.  */
#ifdef HAVE_NS
# ifdef NS_IMPL_GNUSTEP
/* GNUstep needs a bit more pure memory.  Of the existing knobs,
SYSTEM_PURESIZE_EXTRA seems like the least likely to cause problems.  */
#  define SYSTEM_PURESIZE_EXTRA 30000
# endif /* NS_IMPL_GNUSTEP */
#endif /* HAVE_NS */

/* SIGTYPE is the macro we actually use.  */
#ifndef SIGTYPE
#define SIGTYPE RETSIGTYPE
#endif

#ifdef emacs /* Don't do this for lib-src.  */
/* Tell regex.c to use a type compatible with Emacs.  */
#define RE_TRANSLATE_TYPE Lisp_Object
#define RE_TRANSLATE(TBL, C) CHAR_TABLE_TRANSLATE (TBL, C)
#ifdef make_number
/* If make_number is a macro, use it.  */
#define RE_TRANSLATE_P(TBL) (!EQ (TBL, make_number (0)))
#else
/* If make_number is a function, avoid it.  */
#define RE_TRANSLATE_P(TBL) (!(INTEGERP (TBL) && XINT (TBL) == 0))
#endif
#endif

/* Avoid link-time collision with system mktime if we will use our own.  */
#if ! HAVE_MKTIME || BROKEN_MKTIME
#define mktime emacs_mktime
#endif

#define my_strftime nstrftime	/* for strftime.c */

/* These default definitions are good for almost all machines.
   The exceptions override them in m/MACHINE.h.  */

#ifndef BITS_PER_CHAR
#define BITS_PER_CHAR 8
#endif

#ifndef BITS_PER_SHORT
#define BITS_PER_SHORT 16
#endif

/* Note that lisp.h uses this in a preprocessor conditional, so it
   would not work to use sizeof.  That being so, we do all of them
   without sizeof, for uniformity's sake.  */
#ifndef BITS_PER_INT
#define BITS_PER_INT 32
#endif

#ifndef BITS_PER_LONG
#ifdef _LP64
#define BITS_PER_LONG 64
#else
#define BITS_PER_LONG 32
#endif
#endif

/* Define if the compiler supports function prototypes.  It may do so but
   not define __STDC__ (e.g. DEC C by default) or may define it as zero.  */
#undef PROTOTYPES

#ifdef HAVE_STRING_H
#include <string.h>
#endif

#ifdef HAVE_STDLIB_H
#include <stdlib.h>
#endif

#ifdef HAVE_ALLOCA_H
# include <alloca.h>
#elif defined __GNUC__
# define alloca __builtin_alloca
#elif defined _AIX
# define alloca __alloca
#else
# include <stddef.h>
# ifdef  __cplusplus
extern "C"
# endif
void *alloca (size_t);
#endif

#ifndef HAVE_SIZE_T
typedef unsigned size_t;
#endif

#ifndef HAVE_STRCHR
#define strchr(a, b) index (a, b)
#endif

#ifndef HAVE_STRRCHR
#define strrchr(a, b) rindex (a, b)
#endif

#if defined __GNUC__ && (__GNUC__ > 2 \
                         || (__GNUC__ == 2 && __GNUC_MINOR__ >= 5))
#define NO_RETURN	__attribute__ ((__noreturn__))
#else
#define NO_RETURN	/* nothing */
#endif

/* These won't be used automatically yet.  We also need to know, at least,
   that the stack is continuous.  */
#ifdef __GNUC__
#  ifndef GC_SETJMP_WORKS
  /* GC_SETJMP_WORKS is nearly always appropriate for GCC.  */
#    define GC_SETJMP_WORKS 1
#  endif
#  ifndef GC_LISP_OBJECT_ALIGNMENT
#    define GC_LISP_OBJECT_ALIGNMENT (__alignof__ (Lisp_Object))
#  endif
#endif

#endif /* EMACS_CONFIG_H */

/*
Local Variables:
mode: c
End:
*/

