/* src/config.cmake.  Copied from src/config.in.  */

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
#cmakedefine BROKEN_MKTIME ${BROKEN_MKTIME}

/* Define if Emacs cannot be dumped on your system. */
#cmakedefine CANNOT_DUMP ${CANNOT_DUMP}

/* Define to one of `_getb67', `GETB67', `getb67' for Cray-2 and Cray-YMP
   systems. This function is required for `alloca.c' support on those systems.
   */
#cmakedefine CRAY_STACKSEG_END ${CRAY_STACKSEG_END}

/* Define to 1 if using `alloca.c'. */
#cmakedefine C_ALLOCA ${C_ALLOCA}

/* Define to 1 if using `getloadavg.c'. */
#cmakedefine C_GETLOADAVG ${C_GETLOADAVG}

/* Define to 1 for DGUX with <sys/dg_sys_info.h>. */
#cmakedefine DGUX ${DGUX}

/* Define to 1 if you are using the GNU C Library. */
#cmakedefine DOUG_LEA_MALLOC ${DOUG_LEA_MALLOC}

/* Define to the canonical Emacs configuration name. */
#cmakedefine EMACS_CONFIGURATION ${EMACS_CONFIGURATION}

/* Define to the options passed to configure. */
#cmakedefine EMACS_CONFIG_OPTIONS ${EMACS_CONFIG_OPTIONS}

/* Enable expensive run-time checking of data types? */
#cmakedefine ENABLE_CHECKING ${ENABLE_CHECKING}

/* Define this to check for errors in cons list. */
#cmakedefine GC_CHECK_CONS_LIST ${GC_CHECK_CONS_LIST}

/* Define this temporarily to hunt a bug. If defined, the size of strings is
   redundantly recorded in sdata structures so that it can be compared to the
   sizes recorded in Lisp strings. */
#cmakedefine GC_CHECK_STRING_BYTES ${GC_CHECK_STRING_BYTES}

/* Define this to check the string free list. */
#cmakedefine GC_CHECK_STRING_FREE_LIST ${GC_CHECK_STRING_FREE_LIST}

/* Define this to check for short string overrun. */
#cmakedefine GC_CHECK_STRING_OVERRUN ${GC_CHECK_STRING_OVERRUN}

/* Define to 1 if the `getloadavg' function needs to be run setuid or setgid.
   */
#cmakedefine GETLOADAVG_PRIVILEGED ${GETLOADAVG_PRIVILEGED}

/* Define to 1 if the `getpgrp' function requires zero arguments. */
#cmakedefine GETPGRP_VOID ${GETPGRP_VOID}

/* Define to 1 if gettimeofday accepts only one argument. */
#cmakedefine GETTIMEOFDAY_ONE_ARGUMENT ${GETTIMEOFDAY_ONE_ARGUMENT}

/* Define to 1 if you want to use the GNU memory allocator. */
#cmakedefine GNU_MALLOC ${GNU_MALLOC}

/* Define to 1 if the file /usr/lpp/X11/bin/smt.exp exists. */
#cmakedefine HAVE_AIX_SMT_EXP ${HAVE_AIX_SMT_EXP}

/* Define to 1 if you have the `alarm' function. */
#cmakedefine HAVE_ALARM ${HAVE_ALARM}

/* Define to 1 if you have `alloca', as a function or macro. */
#cmakedefine HAVE_ALLOCA ${HAVE_ALLOCA}

/* Define to 1 if you have <alloca.h> and it should be used (not on Ultrix).
   */
#cmakedefine HAVE_ALLOCA_H ${HAVE_ALLOCA_H}

/* Define to 1 if ALSA is available. */
#cmakedefine HAVE_ALSA ${HAVE_ALSA}

/* Define to 1 if you have the `cbrt' function. */
#cmakedefine HAVE_CBRT ${HAVE_CBRT}

/* Define to 1 if you have the `cfmakeraw' function. */
#cmakedefine HAVE_CFMAKERAW ${HAVE_CFMAKERAW}

/* Define to 1 if you have the `cfsetspeed' function. */
#cmakedefine HAVE_CFSETSPEED ${HAVE_CFSETSPEED}

/* Define to 1 if you have the `closedir' function. */
#cmakedefine HAVE_CLOSEDIR ${HAVE_CLOSEDIR}

/* Define to 1 if you have the <coff.h> header file. */
#cmakedefine HAVE_COFF_H ${HAVE_COFF_H}

/* Define to 1 if you have the <com_err.h> header file. */
#cmakedefine HAVE_COM_ERR_H ${HAVE_COM_ERR_H}

/* Define to 1 if you have the `copysign' function. */
#cmakedefine HAVE_COPYSIGN ${HAVE_COPYSIGN}

/* Define to 1 if using D-Bus. */
#cmakedefine HAVE_DBUS ${HAVE_DBUS}

/* Define to 1 if you have the `dbus_watch_get_unix_fd' function. */
#cmakedefine HAVE_DBUS_WATCH_GET_UNIX_FD ${HAVE_DBUS_WATCH_GET_UNIX_FD}

/* Define to 1 if you have the declaration of `sys_siglist', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL_SYS_SIGLIST ${HAVE_DECL_SYS_SIGLIST}

/* Define to 1 if you have the declaration of `tzname', and to 0 if you don't.
   */
#cmakedefine HAVE_DECL_TZNAME ${HAVE_DECL_TZNAME}

/* Define to 1 if you have the declaration of `__sys_siglist', and to 0 if you
   don't. */
#cmakedefine HAVE_DECL___SYS_SIGLIST ${HAVE_DECL___SYS_SIGLIST}

/* Define to 1 if you have the <des.h> header file. */
#cmakedefine HAVE_DES_H ${HAVE_DES_H}

/* Define to 1 if dynamic ptys are supported. */
#cmakedefine HAVE_DEV_PTMX ${HAVE_DEV_PTMX}

/* Define to 1 if you have the `difftime' function. */
#cmakedefine HAVE_DIFFTIME ${HAVE_DIFFTIME}

/* Define to 1 if you have the `dup2' function. */
#cmakedefine HAVE_DUP2 ${HAVE_DUP2}

/* Define to 1 if you have the `euidaccess' function. */
#cmakedefine HAVE_EUIDACCESS ${HAVE_EUIDACCESS}

/* Define to 1 if you have the <fcntl.h> header file. */
#cmakedefine HAVE_FCNTL_H ${HAVE_FCNTL_H}

/* Define to 1 if you have the `fmod' function. */
#cmakedefine HAVE_FMOD ${HAVE_FMOD}

/* Define to 1 if you have the `fork' function. */
#cmakedefine HAVE_FORK ${HAVE_FORK}

/* Define to 1 if you have the `fpathconf' function. */
#cmakedefine HAVE_FPATHCONF ${HAVE_FPATHCONF}

/* Define to 1 if using the freetype and fontconfig libraries. */
#cmakedefine HAVE_FREETYPE ${HAVE_FREETYPE}

/* Define to 1 if you have the `frexp' function. */
#cmakedefine HAVE_FREXP ${HAVE_FREXP}

/* Define to 1 if fseeko (and presumably ftello) exists and is declared. */
#cmakedefine HAVE_FSEEKO ${HAVE_FSEEKO}

/* Define to 1 if you have the `fsync' function. */
#cmakedefine HAVE_FSYNC ${HAVE_FSYNC}

/* Define to 1 if you have the `ftime' function. */
#cmakedefine HAVE_FTIME ${HAVE_FTIME}

/* Define to 1 if you have the `gai_strerror' function. */
#cmakedefine HAVE_GAI_STRERROR ${HAVE_GAI_STRERROR}

/* Define to 1 if using GConf. */
#cmakedefine HAVE_GCONF ${HAVE_GCONF}

/* Define to 1 if you have the `getaddrinfo' function. */
#cmakedefine HAVE_GETADDRINFO ${HAVE_GETADDRINFO}

/* Define to 1 if you have the `getcwd' function. */
#cmakedefine HAVE_GETCWD ${HAVE_GETCWD}

/* Define to 1 if you have the `getdelim' function. */
#cmakedefine HAVE_GETDELIM ${HAVE_GETDELIM}

/* Define to 1 if you have the `getdomainname' function. */
#cmakedefine HAVE_GETDOMAINNAME ${HAVE_GETDOMAINNAME}

/* Define to 1 if you have the `gethostname' function. */
#cmakedefine HAVE_GETHOSTNAME ${HAVE_GETHOSTNAME}

/* Define to 1 if you have the `getline' function. */
#cmakedefine HAVE_GETLINE ${HAVE_GETLINE}

/* Define to 1 if you have the `getloadavg' function. */
#cmakedefine HAVE_GETLOADAVG ${HAVE_GETLOADAVG}

/* Define to 1 if you have the <getopt.h> header file. */
#cmakedefine HAVE_GETOPT_H ${HAVE_GETOPT_H}

/* Define to 1 if you have the `getopt_long_only' function. */
#cmakedefine HAVE_GETOPT_LONG_ONLY ${HAVE_GETOPT_LONG_ONLY}

/* Define to 1 if you have the `getpagesize' function. */
#cmakedefine HAVE_GETPAGESIZE ${HAVE_GETPAGESIZE}

/* Define to 1 if you have the `getpeername' function. */
#cmakedefine HAVE_GETPEERNAME ${HAVE_GETPEERNAME}

/* Define to 1 if you have the `getpt' function. */
#cmakedefine HAVE_GETPT ${HAVE_GETPT}

/* Define to 1 if you have the `getrlimit' function. */
#cmakedefine HAVE_GETRLIMIT ${HAVE_GETRLIMIT}

/* Define to 1 if you have the `getrusage' function. */
#cmakedefine HAVE_GETRUSAGE ${HAVE_GETRUSAGE}

/* Define to 1 if you have the `getsockname' function. */
#cmakedefine HAVE_GETSOCKNAME ${HAVE_GETSOCKNAME}

/* Define to 1 if you have the `getsockopt' function. */
#cmakedefine HAVE_GETSOCKOPT ${HAVE_GETSOCKOPT}

/* Define to 1 if you have the `gettimeofday' function. */
#cmakedefine HAVE_GETTIMEOFDAY ${HAVE_GETTIMEOFDAY}

/* Define to 1 if you have the `getwd' function. */
#cmakedefine HAVE_GETWD ${HAVE_GETWD}

/* Define to 1 if you have the `get_current_dir_name' function. */
#cmakedefine HAVE_GET_CURRENT_DIR_NAME ${HAVE_GET_CURRENT_DIR_NAME}

/* Define to 1 if you have a gif (or ungif) library. */
#cmakedefine HAVE_GIF ${HAVE_GIF}

/* Define to 1 if you have the gpm library (-lgpm). */
#cmakedefine HAVE_GPM ${HAVE_GPM}

/* Define to 1 if you have the `grantpt' function. */
#cmakedefine HAVE_GRANTPT ${HAVE_GRANTPT}

/* Define to 1 if you have the `gtk_adjustment_get_page_size' function. */
#cmakedefine HAVE_GTK_ADJUSTMENT_GET_PAGE_SIZE ${HAVE_GTK_ADJUSTMENT_GET_PAGE_SIZE}

/* Define to 1 if you have GTK and pthread (-lpthread). */
#cmakedefine HAVE_GTK_AND_PTHREAD ${HAVE_GTK_AND_PTHREAD}

/* Define to 1 if you have the `gtk_dialog_get_action_area' function. */
#cmakedefine HAVE_GTK_DIALOG_GET_ACTION_AREA ${HAVE_GTK_DIALOG_GET_ACTION_AREA}

/* Define to 1 if you have the `gtk_file_selection_new' function. */
#cmakedefine HAVE_GTK_FILE_SELECTION_NEW ${HAVE_GTK_FILE_SELECTION_NEW}

/* Define to 1 if you have the `gtk_main' function. */
#cmakedefine HAVE_GTK_MAIN ${HAVE_GTK_MAIN}

/* Define to 1 if you have the `gtk_orientable_set_orientation' function. */
#cmakedefine HAVE_GTK_ORIENTABLE_SET_ORIENTATION ${HAVE_GTK_ORIENTABLE_SET_ORIENTATION}

/* Define to 1 if you have the `gtk_widget_get_mapped' function. */
#cmakedefine HAVE_GTK_WIDGET_GET_MAPPED ${HAVE_GTK_WIDGET_GET_MAPPED}

/* Define to 1 if you have the `gtk_widget_get_sensitive' function. */
#cmakedefine HAVE_GTK_WIDGET_GET_SENSITIVE ${HAVE_GTK_WIDGET_GET_SENSITIVE}

/* Define to 1 if you have the `gtk_widget_get_window' function. */
#cmakedefine HAVE_GTK_WIDGET_GET_WINDOW ${HAVE_GTK_WIDGET_GET_WINDOW}

/* Define to 1 if you have the `gtk_widget_set_has_window' function. */
#cmakedefine HAVE_GTK_WIDGET_SET_HAS_WINDOW ${HAVE_GTK_WIDGET_SET_HAS_WINDOW}

/* Define to 1 if netdb.h declares h_errno. */
#cmakedefine HAVE_H_ERRNO ${HAVE_H_ERRNO}

/* Define to 1 if you have inet sockets. */
#cmakedefine HAVE_INET_SOCKETS ${HAVE_INET_SOCKETS}

/* Define to 1 if you have the <inttypes.h> header file. */
#cmakedefine HAVE_INTTYPES_H ${HAVE_INTTYPES_H}

/* Define to 1 if you have the `isnan' function. */
#cmakedefine HAVE_ISNAN ${HAVE_ISNAN}

/* Define to 1 if you have the jpeg library (-ljpeg). */
#cmakedefine HAVE_JPEG ${HAVE_JPEG}

/* Define to 1 if you have the <kerberosIV/des.h> header file. */
#cmakedefine HAVE_KERBEROSIV_DES_H ${HAVE_KERBEROSIV_DES_H}

/* Define to 1 if you have the <kerberosIV/krb.h> header file. */
#cmakedefine HAVE_KERBEROSIV_KRB_H ${HAVE_KERBEROSIV_KRB_H}

/* Define to 1 if you have the <kerberos/des.h> header file. */
#cmakedefine HAVE_KERBEROS_DES_H ${HAVE_KERBEROS_DES_H}

/* Define to 1 if you have the <kerberos/krb.h> header file. */
#cmakedefine HAVE_KERBEROS_KRB_H ${HAVE_KERBEROS_KRB_H}

/* Define to 1 if `e_text' is a member of `krb5_error'. */
#cmakedefine HAVE_KRB5_ERROR_E_TEXT ${HAVE_KRB5_ERROR_E_TEXT}

/* Define to 1 if `text' is a member of `krb5_error'. */
#cmakedefine HAVE_KRB5_ERROR_TEXT ${HAVE_KRB5_ERROR_TEXT}

/* Define to 1 if you have the <krb5.h> header file. */
#cmakedefine HAVE_KRB5_H ${HAVE_KRB5_H}

/* Define to 1 if you have the <krb.h> header file. */
#cmakedefine HAVE_KRB_H ${HAVE_KRB_H}

/* Define if you have <langinfo.h> and nl_langinfo(CODESET). */
#cmakedefine HAVE_LANGINFO_CODESET ${HAVE_LANGINFO_CODESET}

/* Define to 1 if you have the `com_err' library (-lcom_err). */
#cmakedefine HAVE_LIBCOM_ERR ${HAVE_LIBCOM_ERR}

/* Define to 1 if you have the `crypto' library (-lcrypto). */
#cmakedefine HAVE_LIBCRYPTO ${HAVE_LIBCRYPTO}

/* Define to 1 if you have the `des' library (-ldes). */
#cmakedefine HAVE_LIBDES ${HAVE_LIBDES}

/* Define to 1 if you have the `des425' library (-ldes425). */
#cmakedefine HAVE_LIBDES425 ${HAVE_LIBDES425}

/* Define to 1 if you have the `dgc' library (-ldgc). */
#cmakedefine HAVE_LIBDGC ${HAVE_LIBDGC}

/* Define to 1 if you have the `dnet' library (-ldnet). */
#cmakedefine HAVE_LIBDNET ${HAVE_LIBDNET}

/* Define to 1 if you have the hesiod library (-lhesiod). */
#cmakedefine HAVE_LIBHESIOD ${HAVE_LIBHESIOD}

/* Define to 1 if you have the `intl' library (-lintl). */
#cmakedefine HAVE_LIBINTL ${HAVE_LIBINTL}

/* Define to 1 if you have the `k5crypto' library (-lk5crypto). */
#cmakedefine HAVE_LIBK5CRYPTO ${HAVE_LIBK5CRYPTO}

/* Define to 1 if you have the `krb' library (-lkrb). */
#cmakedefine HAVE_LIBKRB ${HAVE_LIBKRB}

/* Define to 1 if you have the `krb4' library (-lkrb4). */
#cmakedefine HAVE_LIBKRB4 ${HAVE_LIBKRB4}

/* Define to 1 if you have the `krb5' library (-lkrb5). */
#cmakedefine HAVE_LIBKRB5 ${HAVE_LIBKRB5}

/* Define to 1 if you have the `kstat' library (-lkstat). */
#cmakedefine HAVE_LIBKSTAT ${HAVE_LIBKSTAT}

/* Define to 1 if you have the `lockfile' library (-llockfile). */
#cmakedefine HAVE_LIBLOCKFILE ${HAVE_LIBLOCKFILE}

/* Define to 1 if you have the `m' library (-lm). */
#cmakedefine HAVE_LIBM ${HAVE_LIBM}

/* Define to 1 if you have the `mail' library (-lmail). */
#cmakedefine HAVE_LIBMAIL ${HAVE_LIBMAIL}

/* Define to 1 if you have the `ncurses' library (-lncurses). */
#cmakedefine HAVE_LIBNCURSES ${HAVE_LIBNCURSES}

/* Define to 1 if using libotf. */
#cmakedefine HAVE_LIBOTF ${HAVE_LIBOTF}

/* Define to 1 if you have the <libpng/png.h> header file. */
#cmakedefine HAVE_LIBPNG_PNG_H ${HAVE_LIBPNG_PNG_H}

/* Define to 1 if you have the `pthreads' library (-lpthreads). */
#cmakedefine HAVE_LIBPTHREADS ${HAVE_LIBPTHREADS}

/* Define to 1 if you have the resolv library (-lresolv). */
#cmakedefine HAVE_LIBRESOLV ${HAVE_LIBRESOLV}

/* Define to 1 if using SELinux. */
#cmakedefine HAVE_LIBSELINUX ${HAVE_LIBSELINUX}

/* Define to 1 if you have the `Xext' library (-lXext). */
#cmakedefine HAVE_LIBXEXT ${HAVE_LIBXEXT}

/* Define to 1 if you have the `Xmu' library (-lXmu). */
#cmakedefine HAVE_LIBXMU ${HAVE_LIBXMU}

/* Define to 1 if you have the <limits.h> header file. */
#cmakedefine HAVE_LIMITS_H ${HAVE_LIMITS_H}

/* Define to 1 if you have the <linux/version.h> header file. */
#cmakedefine HAVE_LINUX_VERSION_H ${HAVE_LINUX_VERSION_H}

/* Define to 1 if you have the <locale.h> header file. */
#cmakedefine HAVE_LOCALE_H ${HAVE_LOCALE_H}

/* Define to 1 if you have the `logb' function. */
#cmakedefine HAVE_LOGB ${HAVE_LOGB}

/* Define to 1 if you support file names longer than 14 characters. */
#cmakedefine HAVE_LONG_FILE_NAMES ${HAVE_LONG_FILE_NAMES}

/* Define to 1 if you have the `lrand48' function. */
#cmakedefine HAVE_LRAND48 ${HAVE_LRAND48}

/* Define to 1 if using libm17n-flt. */
#cmakedefine HAVE_M17N_FLT ${HAVE_M17N_FLT}

/* Define to 1 if you have the <machine/soundcard.h> header file. */
#cmakedefine HAVE_MACHINE_SOUNDCARD_H ${HAVE_MACHINE_SOUNDCARD_H}

/* Define to 1 if you have the <mach/mach.h> header file. */
#cmakedefine HAVE_MACH_MACH_H ${HAVE_MACH_MACH_H}

/* Define to 1 if you have the <maillock.h> header file. */
#cmakedefine HAVE_MAILLOCK_H ${HAVE_MAILLOCK_H}

/* Define to 1 if you have the <malloc/malloc.h> header file. */
#cmakedefine HAVE_MALLOC_MALLOC_H ${HAVE_MALLOC_MALLOC_H}

/* Define to 1 if you have the `mblen' function. */
#cmakedefine HAVE_MBLEN ${HAVE_MBLEN}

/* Define to 1 if you have the `mbrlen' function. */
#cmakedefine HAVE_MBRLEN ${HAVE_MBRLEN}

/* Define to 1 if you have the `mbsinit' function. */
#cmakedefine HAVE_MBSINIT ${HAVE_MBSINIT}

/* Define to 1 if <wchar.h> declares mbstate_t. */
#cmakedefine HAVE_MBSTATE_T ${HAVE_MBSTATE_T}

/* Define to 1 if you have the `memcmp' function. */
#cmakedefine HAVE_MEMCMP ${HAVE_MEMCMP}

/* Define to 1 if you have the `memcpy' function. */
#cmakedefine HAVE_MEMCPY ${HAVE_MEMCPY}

/* Define to 1 if you have the `memmove' function. */
#cmakedefine HAVE_MEMMOVE ${HAVE_MEMMOVE}

/* Define to 1 if you have the <memory.h> header file. */
#cmakedefine HAVE_MEMORY_H ${HAVE_MEMORY_H}

/* Define to 1 if you have the `mempcpy' function. */
#cmakedefine HAVE_MEMPCPY ${HAVE_MEMPCPY}

/* Define to 1 if you have the `memset' function. */
#cmakedefine HAVE_MEMSET ${HAVE_MEMSET}

/* Define to 1 if you have mouse menus. (This is automatic if you use X, but
   the option to specify it remains.) It is also defined with other window
   systems that support xmenu.c. */
#cmakedefine HAVE_MENUS ${HAVE_MENUS}

/* Define to 1 if you have the `mkdir' function. */
#cmakedefine HAVE_MKDIR ${HAVE_MKDIR}

/* Define to 1 if you have the `mkstemp' function. */
#cmakedefine HAVE_MKSTEMP ${HAVE_MKSTEMP}

/* Define to 1 if you have the `mktime' function. */
#cmakedefine HAVE_MKTIME ${HAVE_MKTIME}

/* Define to 1 if you have a working `mmap' system call. */
#cmakedefine HAVE_MMAP ${HAVE_MMAP}

/* Define if you have mouse support. */
#cmakedefine HAVE_MOUSE ${HAVE_MOUSE}

/* Define to 1 if you have the `mremap' function. */
#cmakedefine HAVE_MREMAP ${HAVE_MREMAP}

/* Define to 1 if you have the <net/if.h> header file. */
#cmakedefine HAVE_NET_IF_H ${HAVE_NET_IF_H}

/* Define to 1 if you have the <nlist.h> header file. */
#cmakedefine HAVE_NLIST_H ${HAVE_NLIST_H}

/* Define to 1 if you are using the NeXTstep API, either GNUstep or Cocoa on
   Mac OS X. */
#cmakedefine HAVE_NS ${HAVE_NS}

/* Define to 1 if libotf has OTF_get_variation_glyphs. */
#cmakedefine HAVE_OTF_GET_VARIATION_GLYPHS ${HAVE_OTF_GET_VARIATION_GLYPHS}

/* Define to 1 if personality LINUX32 can be set. */
#cmakedefine HAVE_PERSONALITY_LINUX32 ${HAVE_PERSONALITY_LINUX32}

/* Define to 1 if you have the png library (-lpng). */
#cmakedefine HAVE_PNG ${HAVE_PNG}

/* Define to 1 if you have the <png.h> header file. */
#cmakedefine HAVE_PNG_H ${HAVE_PNG_H}

/* Define to 1 if you have the `posix_memalign' function. */
#cmakedefine HAVE_POSIX_MEMALIGN ${HAVE_POSIX_MEMALIGN}

/* Define to 1 if you have the `pstat_getdynamic' function. */
#cmakedefine HAVE_PSTAT_GETDYNAMIC ${HAVE_PSTAT_GETDYNAMIC}

/* Define to 1 if you have the <pthread.h> header file. */
#cmakedefine HAVE_PTHREAD_H ${HAVE_PTHREAD_H}

/* Define to 1 if you have the <pty.h> header file. */
#cmakedefine HAVE_PTY_H ${HAVE_PTY_H}

/* Define to 1 if you have the <pwd.h> header file. */
#cmakedefine HAVE_PWD_H ${HAVE_PWD_H}

/* Define to 1 if you have the `random' function. */
#cmakedefine HAVE_RANDOM ${HAVE_RANDOM}

/* Define to 1 if you have the `recvfrom' function. */
#cmakedefine HAVE_RECVFROM ${HAVE_RECVFROM}

/* Define to 1 if you have the `rename' function. */
#cmakedefine HAVE_RENAME ${HAVE_RENAME}

/* Define to 1 if res_init is available. */
#cmakedefine HAVE_RES_INIT ${HAVE_RES_INIT}

/* Define to 1 if you have the `rint' function. */
#cmakedefine HAVE_RINT ${HAVE_RINT}

/* Define to 1 if you have the `rmdir' function. */
#cmakedefine HAVE_RMDIR ${HAVE_RMDIR}

/* Define to 1 if using librsvg. */
#cmakedefine HAVE_RSVG ${HAVE_RSVG}

/* Define to 1 if you have the `select' function. */
#cmakedefine HAVE_SELECT ${HAVE_SELECT}

/* Define to 1 if you have the `sendto' function. */
#cmakedefine HAVE_SENDTO ${HAVE_SENDTO}

/* Define to 1 if you have the `setitimer' function. */
#cmakedefine HAVE_SETITIMER ${HAVE_SETITIMER}

/* Define to 1 if you have the `setlocale' function. */
#cmakedefine HAVE_SETLOCALE ${HAVE_SETLOCALE}

/* Define to 1 if you have the `setpgid' function. */
#cmakedefine HAVE_SETPGID ${HAVE_SETPGID}

/* Define to 1 if you have the `setrlimit' function. */
#cmakedefine HAVE_SETRLIMIT ${HAVE_SETRLIMIT}

/* Define to 1 if you have the `setsid' function. */
#cmakedefine HAVE_SETSID ${HAVE_SETSID}

/* Define to 1 if you have the `setsockopt' function. */
#cmakedefine HAVE_SETSOCKOPT ${HAVE_SETSOCKOPT}

/* Define to 1 if you have the `shutdown' function. */
#cmakedefine HAVE_SHUTDOWN ${HAVE_SHUTDOWN}

/* Define to 1 if the system has the type `size_t'. */
#cmakedefine HAVE_SIZE_T ${HAVE_SIZE_T}

/* Define to 1 if you have sound support. */
#cmakedefine HAVE_SOUND ${HAVE_SOUND}

/* Define to 1 if you have the <soundcard.h> header file. */
#cmakedefine HAVE_SOUNDCARD_H ${HAVE_SOUNDCARD_H}

/* Define to 1 if `speed_t' is declared by <termios.h>. */
#cmakedefine HAVE_SPEED_T ${HAVE_SPEED_T}

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H ${HAVE_STDINT_H}

/* Define to 1 if you have the <stdio_ext.h> header file. */
#cmakedefine HAVE_STDIO_EXT_H ${HAVE_STDIO_EXT_H}

/* Define to 1 if you have the <stdlib.h> header file. */
#cmakedefine HAVE_STDLIB_H ${HAVE_STDLIB_H}

/* Define to 1 if you have the `strchr' function. */
#cmakedefine HAVE_STRCHR ${HAVE_STRCHR}

/* Define to 1 if you have the `strerror' function. */
#cmakedefine HAVE_STRERROR ${HAVE_STRERROR}

/* Define to 1 if you have the `strftime' function. */
#cmakedefine HAVE_STRFTIME ${HAVE_STRFTIME}

/* Define to 1 if you have the <strings.h> header file. */
#cmakedefine HAVE_STRINGS_H ${HAVE_STRINGS_H}

/* Define to 1 if you have the <string.h> header file. */
#cmakedefine HAVE_STRING_H ${HAVE_STRING_H}

/* Define to 1 if you have the `strrchr' function. */
#cmakedefine HAVE_STRRCHR ${HAVE_STRRCHR}

/* Define to 1 if you have the `strsignal' function. */
#cmakedefine HAVE_STRSIGNAL ${HAVE_STRSIGNAL}

/* Define to 1 if `ifr_addr' is a member of `struct ifreq'. */
#cmakedefine HAVE_STRUCT_IFREQ_IFR_ADDR ${HAVE_STRUCT_IFREQ_IFR_ADDR}

/* Define to 1 if `ifr_broadaddr' is a member of `struct ifreq'. */
#cmakedefine HAVE_STRUCT_IFREQ_IFR_BROADADDR ${HAVE_STRUCT_IFREQ_IFR_BROADADDR}

/* Define to 1 if `ifr_flags' is a member of `struct ifreq'. */
#cmakedefine HAVE_STRUCT_IFREQ_IFR_FLAGS ${HAVE_STRUCT_IFREQ_IFR_FLAGS}

/* Define to 1 if `ifr_hwaddr' is a member of `struct ifreq'. */
#cmakedefine HAVE_STRUCT_IFREQ_IFR_HWADDR ${HAVE_STRUCT_IFREQ_IFR_HWADDR}

/* Define to 1 if `ifr_netmask' is a member of `struct ifreq'. */
#cmakedefine HAVE_STRUCT_IFREQ_IFR_NETMASK ${HAVE_STRUCT_IFREQ_IFR_NETMASK}

/* Define to 1 if `n_un.n_name' is a member of `struct nlist'. */
#cmakedefine HAVE_STRUCT_NLIST_N_UN_N_NAME ${HAVE_STRUCT_NLIST_N_UN_N_NAME}

/* Define to 1 if `tm_zone' is a member of `struct tm'. */
#cmakedefine HAVE_STRUCT_TM_TM_ZONE ${HAVE_STRUCT_TM_TM_ZONE}

/* Define to 1 if `struct utimbuf' is declared by <utime.h>. */
#cmakedefine HAVE_STRUCT_UTIMBUF ${HAVE_STRUCT_UTIMBUF}

/* Define to 1 if you have the `sync' function. */
#cmakedefine HAVE_SYNC ${HAVE_SYNC}

/* Define to 1 if you have the `sysinfo' function. */
#cmakedefine HAVE_SYSINFO ${HAVE_SYSINFO}

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#cmakedefine HAVE_SYS_IOCTL_H ${HAVE_SYS_IOCTL_H}

/* Define to 1 if you have the <sys/mman.h> header file. */
#cmakedefine HAVE_SYS_MMAN_H ${HAVE_SYS_MMAN_H}

/* Define to 1 if you have the <sys/param.h> header file. */
#cmakedefine HAVE_SYS_PARAM_H ${HAVE_SYS_PARAM_H}

/* Define to 1 if you have the <sys/resource.h> header file. */
#cmakedefine HAVE_SYS_RESOURCE_H ${HAVE_SYS_RESOURCE_H}

/* Define to 1 if you have the <sys/select.h> header file. */
#cmakedefine HAVE_SYS_SELECT_H ${HAVE_SYS_SELECT_H}

/* Define to 1 if you have the <sys/socket.h> header file. */
#cmakedefine HAVE_SYS_SOCKET_H ${HAVE_SYS_SOCKET_H}

/* Define to 1 if you have the <sys/soundcard.h> header file. */
#cmakedefine HAVE_SYS_SOUNDCARD_H ${HAVE_SYS_SOUNDCARD_H}

/* Define to 1 if you have the <sys/stat.h> header file. */
#cmakedefine HAVE_SYS_STAT_H ${HAVE_SYS_STAT_H}

/* Define to 1 if you have the <sys/systeminfo.h> header file. */
#cmakedefine HAVE_SYS_SYSTEMINFO_H ${HAVE_SYS_SYSTEMINFO_H}

/* Define to 1 if you have the <sys/timeb.h> header file. */
#cmakedefine HAVE_SYS_TIMEB_H ${HAVE_SYS_TIMEB_H}

/* Define to 1 if you have the <sys/time.h> header file. */
#cmakedefine HAVE_SYS_TIME_H ${HAVE_SYS_TIME_H}

/* Define to 1 if you have the <sys/types.h> header file. */
#cmakedefine HAVE_SYS_TYPES_H ${HAVE_SYS_TYPES_H}

/* Define to 1 if you have the <sys/un.h> header file. */
#cmakedefine HAVE_SYS_UN_H ${HAVE_SYS_UN_H}

/* Define to 1 if you have the <sys/utsname.h> header file. */
#cmakedefine HAVE_SYS_UTSNAME_H ${HAVE_SYS_UTSNAME_H}

/* Define to 1 if you have the <sys/vlimit.h> header file. */
#cmakedefine HAVE_SYS_VLIMIT_H ${HAVE_SYS_VLIMIT_H}

/* Define to 1 if you have <sys/wait.h> that is POSIX.1 compatible. */
#cmakedefine HAVE_SYS_WAIT_H ${HAVE_SYS_WAIT_H}

/* Define to 1 if you have the <sys/_mbstate_t.h> header file. */
#cmakedefine HAVE_SYS__MBSTATE_T_H ${HAVE_SYS__MBSTATE_T_H}

/* Define to 1 if you have the <termios.h> header file. */
#cmakedefine HAVE_TERMIOS_H ${HAVE_TERMIOS_H}

/* Define to 1 if you have the <term.h> header file. */
#cmakedefine HAVE_TERM_H ${HAVE_TERM_H}

/* Define to 1 if you have the tiff library (-ltiff). */
#cmakedefine HAVE_TIFF ${HAVE_TIFF}

/* Define to 1 if `struct timeval' is declared by <sys/time.h>. */
#cmakedefine HAVE_TIMEVAL ${HAVE_TIMEVAL}

/* Define to 1 if `tm_gmtoff' is member of `struct tm'. */
#cmakedefine HAVE_TM_GMTOFF ${HAVE_TM_GMTOFF}

/* Define to 1 if your `struct tm' has `tm_zone'. Deprecated, use
   `HAVE_STRUCT_TM_TM_ZONE' instead. */
#cmakedefine HAVE_TM_ZONE ${HAVE_TM_ZONE}

/* Define to 1 if you have the `touchlock' function. */
#cmakedefine HAVE_TOUCHLOCK ${HAVE_TOUCHLOCK}

/* Define to 1 if you don't have `tm_zone' but do have the external array
   `tzname'. */
#cmakedefine HAVE_TZNAME ${HAVE_TZNAME}

/* Define to 1 if you have the `tzset' function. */
#cmakedefine HAVE_TZSET ${HAVE_TZSET}

/* Define to 1 if you have the `ualarm' function. */
#cmakedefine HAVE_UALARM ${HAVE_UALARM}

/* Define to 1 if you have the <unistd.h> header file. */
#cmakedefine HAVE_UNISTD_H ${HAVE_UNISTD_H}

/* Define to 1 if you have the `utimes' function. */
#cmakedefine HAVE_UTIMES ${HAVE_UTIMES}

/* Define to 1 if you have the <utime.h> header file. */
#cmakedefine HAVE_UTIME_H ${HAVE_UTIME_H}

/* Define to 1 if you have the <utmp.h> header file. */
#cmakedefine HAVE_UTMP_H ${HAVE_UTMP_H}

/* Define to 1 if you have the `vfork' function. */
#cmakedefine HAVE_VFORK ${HAVE_VFORK}

/* Define to 1 if you have the <vfork.h> header file. */
#cmakedefine HAVE_VFORK_H ${HAVE_VFORK_H}

/* Define if you have a window system. */
#cmakedefine HAVE_WINDOW_SYSTEM ${HAVE_WINDOW_SYSTEM}

/* Define to 1 if `fork' works. */
#cmakedefine HAVE_WORKING_FORK ${HAVE_WORKING_FORK}

/* Define to 1 if `vfork' works. */
#cmakedefine HAVE_WORKING_VFORK ${HAVE_WORKING_VFORK}

/* Define to 1 if you want to use version 11 of X windows. Otherwise, Emacs
   expects to use version 10. */
#cmakedefine HAVE_X11 ${HAVE_X11}

/* Define to 1 if you have the X11R6 or newer version of Xlib. */
#cmakedefine HAVE_X11R6 ${HAVE_X11R6}

/* Define if you have usable X11R6-style XIM support. */
#cmakedefine HAVE_X11R6_XIM ${HAVE_X11R6_XIM}

/* Define to 1 if you have the X11R6 or newer version of Xt. */
#cmakedefine HAVE_X11XTR6 ${HAVE_X11XTR6}

/* Define to 1 if you have the Xaw3d library (-lXaw3d). */
#cmakedefine HAVE_XAW3D ${HAVE_XAW3D}

/* Define to 1 if you have the Xft library. */
#cmakedefine HAVE_XFT ${HAVE_XFT}

/* Define to 1 if XIM is available */
#cmakedefine HAVE_XIM ${HAVE_XIM}

/* Define to 1 if you have the XkbGetKeyboard function. */
#cmakedefine HAVE_XKBGETKEYBOARD ${HAVE_XKBGETKEYBOARD}

/* Define to 1 if you have the Xpm libary (-lXpm). */
#cmakedefine HAVE_XPM ${HAVE_XPM}

/* Define to 1 if you have the `XrmSetDatabase' function. */
#cmakedefine HAVE_XRMSETDATABASE ${HAVE_XRMSETDATABASE}

/* Define to 1 if you have the `XScreenNumberOfScreen' function. */
#cmakedefine HAVE_XSCREENNUMBEROFSCREEN ${HAVE_XSCREENNUMBEROFSCREEN}

/* Define to 1 if you have the `XScreenResourceString' function. */
#cmakedefine HAVE_XSCREENRESOURCESTRING ${HAVE_XSCREENRESOURCESTRING}

/* Define to 1 if you have the `XSetWMProtocols' function. */
#cmakedefine HAVE_XSETWMPROTOCOLS ${HAVE_XSETWMPROTOCOLS}

/* Define if you have usable i18n support. */
#cmakedefine HAVE_X_I18N ${HAVE_X_I18N}

/* Define to 1 if you have the SM library (-lSM). */
#cmakedefine HAVE_X_SM ${HAVE_X_SM}

/* Define to 1 if you want to use the X window system. */
#cmakedefine HAVE_X_WINDOWS ${HAVE_X_WINDOWS}

/* Define to 1 if you have the `__fpending' function. */
#cmakedefine HAVE___FPENDING ${HAVE___FPENDING}

/* Define to support using a Hesiod database to find the POP server. */
#cmakedefine HESIOD ${HESIOD}

/* Define to support Kerberos-authenticated POP mail retrieval. */
#cmakedefine KERBEROS ${KERBEROS}

/* Define to use Kerberos 5 instead of Kerberos 4. */
#cmakedefine KERBEROS5 ${KERBEROS5}

/* Define to 1 if localtime caches TZ. */
#cmakedefine LOCALTIME_CACHE ${LOCALTIME_CACHE}

/* String giving fallback POP mail host. */
#cmakedefine MAILHOST ${MAILHOST}

/* Define to unlink, rather than empty, mail spool after reading. */
#cmakedefine MAIL_UNLINK_SPOOL ${MAIL_UNLINK_SPOOL}

/* Define if the mailer uses flock to interlock the mail spool. */
#cmakedefine MAIL_USE_FLOCK ${MAIL_USE_FLOCK}

/* Define if the mailer uses lockf to interlock the mail spool. */
#cmakedefine MAIL_USE_LOCKF ${MAIL_USE_LOCKF}

/* Define to support MMDF mailboxes in movemail. */
#cmakedefine MAIL_USE_MMDF ${MAIL_USE_MMDF}

/* Define to support POP mail retrieval. */
#cmakedefine MAIL_USE_POP ${MAIL_USE_POP}

/* Define to 1 if your `struct nlist' has an `n_un' member. Obsolete, depend
   on `HAVE_STRUCT_NLIST_N_UN_N_NAME */
#cmakedefine NLIST_NAME_UNION ${NLIST_NAME_UNION}

/* Define to 1 if you don't have struct exception in math.h. */
#cmakedefine NO_MATHERR ${NO_MATHERR}

/* Define to 1 if `NSInteger' is defined. */
#cmakedefine NS_HAVE_NSINTEGER ${NS_HAVE_NSINTEGER}

/* Define to 1 if you are using NS windowing under MacOS X. */
#cmakedefine NS_IMPL_COCOA ${NS_IMPL_COCOA}

/* Define to 1 if you are using NS windowing under GNUstep. */
#cmakedefine NS_IMPL_GNUSTEP ${NS_IMPL_GNUSTEP}

/* Define if the C compiler is the linker. */
#cmakedefine ORDINARY_LINK ${ORDINARY_LINK}

/* Define to the address where bug reports for this package should be sent. */
#cmakedefine PACKAGE_BUGREPORT "${PACKAGE_BUGREPORT}"

/* Define to the full name of this package. */
#cmakedefine PACKAGE_NAME "${PACKAGE_NAME}"

/* Define to the full name and version of this package. */
#cmakedefine PACKAGE_STRING "${PACKAGE_STRING}"

/* Define to the one symbol short name of this package. */
#cmakedefine PACKAGE_TARNAME ${PACKAGE_TARNAME}

/* Define to the home page for this package. */
#cmakedefine PACKAGE_URL ${PACKAGE_URL}

/* Define to the version of this package. */
#cmakedefine PACKAGE_VERSION ${PACKAGE_VERSION}

/* Define as `void' if your compiler accepts `void *'; otherwise define as
   `char'. */
#cmakedefine POINTER_TYPE ${POINTER_TYPE}

/* Define to 1 if the C compiler supports function prototypes. */
#cmakedefine PROTOTYPES ${PROTOTYPES}

/* Define REL_ALLOC if you want to use the relocating allocator for buffer
   space. */
#cmakedefine REL_ALLOC ${REL_ALLOC}

/* Define as the return type of signal handlers (`int' or `void'). */
#cmakedefine RETSIGTYPE ${RETSIGTYPE}

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown */
#cmakedefine STACK_DIRECTION ${STACK_DIRECTION}

/* Define to 1 if you have the ANSI C header files. */
#cmakedefine STDC_HEADERS ${STDC_HEADERS}

/* Define to 1 on System V Release 4. */
#cmakedefine SVR4 ${SVR4}

/* Process async input synchronously. */
#cmakedefine SYNC_INPUT ${SYNC_INPUT}

/* Define to use system malloc. */
#cmakedefine SYSTEM_MALLOC ${SYSTEM_MALLOC}

/* Define to 1 if you use terminfo instead of termcap. */
#cmakedefine TERMINFO ${TERMINFO}

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#cmakedefine TIME_WITH_SYS_TIME ${TIME_WITH_SYS_TIME}

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
#cmakedefine TM_IN_SYS_TIME ${TM_IN_SYS_TIME}

/* Define to 1 for Encore UMAX. */
#cmakedefine UMAX ${UMAX}

/* Define to 1 for Encore UMAX 4.3 that has <inq_status/cpustats.h> instead of
   <sys/cpustats.h>. */
#cmakedefine UMAX4_3 ${UMAX4_3}

/* Define to 1 if using GTK. */
#cmakedefine USE_GTK ${USE_GTK}

/* Define this to use a lisp union for the Lisp_Object data type. */
#cmakedefine USE_LISP_UNION_TYPE ${USE_LISP_UNION_TYPE}

/* Define to 1 if using the Lucid X toolkit. */
#cmakedefine USE_LUCID ${USE_LUCID}

/* Define to use mmap to allocate buffer text. */
#cmakedefine USE_MMAP_FOR_BUFFERS ${USE_MMAP_FOR_BUFFERS}

/* Define to 1 if using the Motif X toolkit. */
#cmakedefine USE_MOTIF ${USE_MOTIF}

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# undef _ALL_SOURCE
#endif

/* Enable GNU extensions on systems that have them.  */
#cmakedefine _GNU_SOURCE ${_GNU_SOURCE}

/* Enable threading extensions on Solaris.  */
#cmakedefine _POSIX_PTHREAD_SEMANTICS ${_POSIX_PTHREAD_SEMANTICS}

/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# undef _TANDEM_SOURCE
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# undef __EXTENSIONS__
#endif


/* Define to 1 if we should use toolkit scroll bars. */
#cmakedefine USE_TOOLKIT_SCROLL_BARS ${USE_TOOLKIT_SCROLL_BARS}

/* Define to 1 if we should use XIM, if it is available. */
#cmakedefine USE_XIM ${USE_XIM}

/* Define to 1 if using an X toolkit. */
#cmakedefine USE_X_TOOLKIT ${USE_X_TOOLKIT}

/* Define this to check for malloc buffer overrun. */
#cmakedefine XMALLOC_OVERRUN_CHECK ${XMALLOC_OVERRUN_CHECK}

/* Define to the type of the 6th arg of XRegisterIMInstantiateCallback, either
   XPointer or XPointer*. */
#cmakedefine XRegisterIMInstantiateCallback_arg6 ${XRegisterIMInstantiateCallback_arg6}

/* Number of bits in a file offset, on hosts where this is settable. */
#cmakedefine _FILE_OFFSET_BITS ${_FILE_OFFSET_BITS}

/* Define to 1 to make fseeko visible on some hosts (e.g. glibc 2.2). */
#cmakedefine _LARGEFILE_SOURCE ${_LARGEFILE_SOURCE}

/* Define for large files, on AIX-style hosts. */
#cmakedefine _LARGE_FILES ${_LARGE_FILES}

/* Define to 1 if on MINIX. */
#cmakedefine _MINIX ${_MINIX}

/* Define to 2 if the system does not provide POSIX.1 features except with
   this defined. */
#cmakedefine _POSIX_1_SOURCE ${_POSIX_1_SOURCE}

/* Define to 1 if you need to in order for `stat' and other things to work. */
#cmakedefine _POSIX_SOURCE ${_POSIX_SOURCE}

/* Define to rpl_ if the getopt replacement functions and variables should be
   used. */
#cmakedefine __GETOPT_PREFIX ${__GETOPT_PREFIX}

/* Define like PROTOTYPES; this can be used by system headers. */
#cmakedefine __PROTOTYPES ${__PROTOTYPES}

/* Define to compiler's equivalent of C99 restrict keyword. Don't define if
   equivalent is `__restrict'. */
#cmakedefine __restrict ${__restrict}

/* Define to compiler's equivalent of C99 restrict keyword in array
   declarations. Define as empty for no equivalent. */
#cmakedefine __restrict_arr ${__restrict_arr}

/* Define to the used machine dependent file. */
#cmakedefine config_machfile "${config_machfile}"

/* Define to the used os dependent file. */
#cmakedefine config_opsysfile "${config_opsysfile}"

/* Define to empty if `const' does not conform to ANSI C. */
#cmakedefine const ${const}

/* Define to a type if <wchar.h> does not define. */
#cmakedefine mbstate_t ${mbstate_t}

/* Define to `int' if <sys/types.h> does not define. */
#cmakedefine pid_t ${pid_t}

/* Define to any substitute for sys_siglist. */
#cmakedefine sys_siglist ${sys_siglist}

/* Define as `fork' if `vfork' does not work. */
#cmakedefine vfork ${vfork}

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
#cmakedefine volatile ${volatile}


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
#cmakedefine PROTOTYPES ${PROTOTYPES}

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
