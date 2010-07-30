include(CheckIncludeFile)
include(CheckLibraryExists)
include(CheckSymbolExists)
include(CheckFunctionExists)
include(CheckCXXSourceCompiles)
include(CheckStructHasMember)

# available programs checks
function(emacs_find_program name)
  string(TOUPPER ${name} NAME)
  find_program(EMACS_PATH_${NAME} ${name})
  mark_as_advanced(EMACS_PATH_${NAME})
  if(EMACS_PATH_${NAME})
    set(HAVE_${NAME} 1 CACHE INTERNAL "Is ${name} available ?")
    mark_as_advanced(HAVE_${NAME})
  else(EMACS_PATH_${NAME})
    set(HAVE_${NAME} "" CACHE INTERNAL "Is ${name} available ?")
  endif(EMACS_PATH_${NAME})
endfunction()

# Returns the host triple.
# Invokes config.guess
function( get_target_triple var )
  if( MSVC )
    if( CMAKE_CL_64 )
      set( value "x86_64-pc-win32" )
    else()
      set( value "i686-pc-win32" )
    endif()
  elseif( MINGW AND NOT MSYS )
    set( value "i686-pc-mingw32" )
  else( MSVC )
    set(config_guess ${EMACS_ROOT_DIR}/config.guess)
    execute_process(COMMAND sh ${config_guess}
      RESULT_VARIABLE TT_RV
      OUTPUT_VARIABLE TT_OUT
      OUTPUT_STRIP_TRAILING_WHITESPACE)
    if( NOT TT_RV EQUAL 0 )
      message(FATAL_ERROR "Failed to execute ${config_guess}")
    endif( NOT TT_RV EQUAL 0 )
    set( value ${TT_OUT} )
  endif( MSVC )
  set( ${var} ${value} PARENT_SCOPE )
  message(STATUS "Target triple: ${value}")
endfunction( get_target_triple var )

get_target_triple(EMACS_HOSTTRIPLE)

if( UNIX AND NOT BEOS )
  # Used by check_symbol_exists:
  set(CMAKE_REQUIRED_LIBRARIES m)
endif()

# Are we using 
check_symbol_exists(__GLIBC__ stdio.h EMACS_USING_GLIBC)
if( EMACS_USING_GLIBC )
  set(_GNU_SOURCE 1)
  set(CMAKE_REQUIRED_DEFINITIONS -D_GNU_SOURCE)
endif()

if( WIN32 )
  set(CMAKE_REQUIRED_DEFINITIONS ${CMAKE_REQUIRED_DEFINITIONS}
    -I${EMACS_ROOT_DIR}/nt/inc)
endif()

# Helper macros and functions
macro(add_cxx_include result files)
  set(${result} "")
  foreach (file_name ${files})
     set(${result} "${${result}}#include<${file_name}>\n")
  endforeach()
endmacro(add_cxx_include files result)

function(check_type_exists type files variable)
  add_cxx_include(includes "${files}")
  CHECK_CXX_SOURCE_COMPILES("
    ${includes} ${type} typeVar;
    int main() {
        return 0;
    }
    " ${variable})
endfunction()

# checks appear on the same order they corresponding macros are on
# src/config.cmake

# FIXME: BROKEN_MTIME

set(CANNOT_DUMP 1) # FIXME: dumping can be problematic with C++:

# FIXME: CRAY_STACKSEG_END

# FIXME: C_ALLOCA

# FIXME: C_GETLOADAVG

# FIXME: DGUX

set(DOUG_LEA_MALLOC ${_GNU_SOURCE})

set(EMACS_CONFIGURATION "\"\"") # FIXME

set(EMACS_CONFIG_OPTIONS "\"\"") # FIXME

# FIXME: ENABLE_CHECKING

# FIXME: GC_CHECK_CONS_LIST

# FIXME: GC_CHECK_STRING_BYTES

# FIXME: GC_CHECK_STRING_FREE_LIST

# FIXME: GETLOADAVG_PRIVILEGED

set(GETPGRP_VOID 1) # FIXME

# FIXME: GETTIMEOFDAY_ONE_ARGUMENT

# FIXME: GNU_MALLOC

# FIXME: HAVE_AIX_SMT_EXP

# FIXME: HAVE_ALARM

check_symbol_exists(alloca alloca.h HAVE_ALLOCA)

check_include_file(alloca.h HAVE_ALLOCA_H)

# FIXME: HAVE_ALSA

check_symbol_exists(cbrt math.h HAVE_CBRT)

check_symbol_exists(cfmakeraw "termios.h;unistd.h" HAVE_CFMAKERAW)

check_symbol_exists(cfsetspeed "termios.h;unistd.h" HAVE_CFSETSPEED)

check_symbol_exists(closedir "dirent.h;sys/types.h" HAVE_CLOSEDIR)

check_include_file(coff.h HAVE_COFF_H)

check_include_file(com_err.h HAVE_COM_ERR_H)

# FIXME: HAVE_COPYSIGN

# FIXME: HAVE_DBUS

# FIXME: HAVE_DBUS_WATCH_GET_UNIX_FD

# FIXME: HAVE_DECL_SYS_SIGLIST

# FIXME: HAVE_DECL_TZNAME

# FIXME: HAVE_DECL___SYS_SIGLIST

check_include_file(des.h HAVE_DES_H)

# FIXME: HAVE_DEV_PTMX

check_symbol_exists(difftime time.h HAVE_DIFFTIME)

check_symbol_exists(dup2 unistd.h HAVE_DUP2)

# FIXME: HAVE_EUIDACCESS

check_include_file(fcntl.h HAVE_FCNTL_H)

check_symbol_exists(fmod math.h HAVE_FMOD)

check_symbol_exists(fork "unistd.h;sys/types.h" HAVE_FORK)

# FIXME: HAVE_FPATHCONF

check_library_exists(freetype FT_Render_Glyph "" HAVE_FREETYPE)

check_symbol_exists(frexp math.h HAVE_FREXP)

check_symbol_exists(fseeko stdio.h HAVE_FSEEKO)

check_symbol_exists(fsync unistd.h HAVE_FSYNC)

check_symbol_exists(ftime "sys/timeb.h;sys/time.h;time.h" HAVE_FTIME)

check_symbol_exists(gai_strerror sys/types.h HAVE_GAI_STRERROR)

# FIXME: HAVE_GCONF

# FIXME: HAVE_GETADDRINFO

check_symbol_exists(getcwd unistd.h HAVE_GETCWD)

# FIXME: HAVE_GETDELIM

check_symbol_exists(getdomainname unistd.h HAVE_GETDOMAINNAME)

check_symbol_exists(gethostname unistd.h HAVE_GETHOSTNAME)

check_symbol_exists(getline stdio.h HAVE_GETLINE)

# FIXME: HAVE_GETLOADAVG

check_include_file(getopt.h HAVE_GETOPT_H)

check_symbol_exists(getopt_long_only getopt.h HAVE_GETOPT_LONG_ONLY)

# FIXME: HAVE_GETPAGESIZE

# FIXME: HAVE_GETPEERNAME

# FIXME: HAVE_GETPT

# FIXME: HAVE_GETRLIMIT

# FIXME: HAVE_GETRUSAGE

# FIXME: HAVE_GETSOCKNAME

# FIXME: HAVE_GETSOCKOPT

check_symbol_exists(gettimeofday sys/time.h HAVE_GETTIMEOFDAY)

check_symbol_exists(getwd unistd.h HAVE_GETWD)

check_symbol_exists(get_current_dir_name unistd.h HAVE_GET_CURRENT_DIR_NAME)

# FIXME: HAVE_GIF

# FIXME: HAVE_GPM

# FIXME: HAVE_GRANTPT

# FIXME: HAVE_GTK_ADJUSTMENT_GET_PAGE_SIZE

# FIXME: HAVE_GTK_AND_PTHREAD

# FIXME: HAVE_GTK_DIALOG_GET_ACTION_AREA

# FIXME: HAVE_GTK_FILE_SELECTION_NEW

# FIXME: HAVE_GTK_MAIN

# FIXME: HAVE_GTK_ORIENTABLE_SET_ORIENTATION

# FIXME: HAVE_GTK_WIDGET_GET_MAPPED

# FIXME: HAVE_GTK_WIDGET_GET_SENSITIVE

# FIXME: HAVE_GTK_WIDGET_GET_WINDOW

# FIXME: HAVE_GTK_WIDGET_SET_HAS_WINDOW

check_symbol_exists(h_errno netdb.h HAVE_H_ERRNO)

# FIXME: HAVE_INET_SOCKETS

check_include_file(inttypes.h HAVE_INTTYPES_H)

check_symbol_exists(isnan math.h HAVE_ISNAN)

# FIXME: HAVE_JPEG

# FIXME: HAVE_KERBEROSIV_DES_H

# FIXME: HAVE_KERBEROSIV_KRB_H

# FIXME: HAVE_KERBEROS_DES_H

# FIXME: HAVE_KERBEROS_KRB_H

# FIXME: HAVE_KRB5_ERROR_E_TEXT

# FIXME: HAVE_KRB5_ERROR_TEXT

check_include_file(krb5.h HAVE_KRB5_H)

check_include_file(krb.h HAVE_KRB_H)

# FIXME: HAVE_LANGINFO_CODESET

# FIXME: HAVE_LIBCOM_ERR

# FIXME: HAVE_LIBCRYPTO

# FIXME: HAVE_LIBDES

# FIXME: HAVE_LIBDES425

# FIXME: HAVE_LIBDGC

# FIXME: HAVE_LIBDNET

# FIXME: HAVE_LIBHESIOD

# FIXME: HAVE_LIBINTL

# FIXME: HAVE_LIBK5CRYPTO

# FIXME: HAVE_LIBKRB

# FIXME: HAVE_LIBKRB4

# FIXME: HAVE_LIBKRB4

# FIXME: HAVE_LIBKSTAT

# FIXME: HAVE_LIBLOCKFILE

check_library_exists(m isnan "" HAVE_LIBM)

# FIXME: HAVE_LIBMAIL

check_library_exists(ncurses beep "" HAVE_LIBNCURSES)

# FIXME: HAVE_LIBOTF

check_include_file(libpng/png.h HAVE_LIBPNG_PNG_H)

check_library_exists(pthread pthread_create "" HAVE_LIBPTHREADS)

# FIXME: HAVE_LIBRESOLV

# FIXME: HAVE_LIBSELINUX

# FIXME: HAVE_LIBXEXT

# FIXME: HAVE_LIBXMU

check_include_file(limits.h HAVE_LIMITS_H)

check_include_file(linux/version.h HAVE_LINUX_VERSION_H)

check_include_file(locale.h HAVE_LOCALE_H)

# FIXME: HAVE_LOGB

set(HAVE_LONG_FILE_NAMES 1) # FIXME

# FIXME: HAVE_LRAND48

# FIXME: HAVE_M17N_FLT

check_include_file(machine/soundcard.h HAVE_MACHINE_SOUNDCARD_H)

check_include_file(mach/mach.h HAVE_MACH_MACH_H)

check_include_file(maillock.h HAVE_MAILLOCK_H)

check_include_file(malloc/malloc.h HAVE_MALLOC_MALLOC_H)

# FIXME: HAVE_MBLEN

# FIXME: HAVE_MBRLEN

# FIXME: HAVE_MBSINIT

check_type_exists(mbstate_t wchar.h HAVE_MBSTATE_T)

check_symbol_exists(memcmp string.h HAVE_MEMCMP)

check_symbol_exists(memcpy string.h HAVE_MEMCPY)

check_symbol_exists(memmove string.h HAVE_MEMMOVE)

check_include_file(memory.h HAVE_MEMORY_H)

check_symbol_exists(mempcpy string.h HAVE_MEMPCPY)

check_symbol_exists(memset string.h HAVE_MEMSET)

set(HAVE_MENUS 1) # FIXME

check_symbol_exists(mkdir "sys/stat.h;sys/types.h" HAVE_MKDIR)

check_symbol_exists(mkstemp "stdlib.h;unistd.h" HAVE_MKSTEMP)

check_symbol_exists(mktime time.h HAVE_MKTIME)

check_symbol_exists(mmap sys/mman.h HAVE_MMAP)

set(HAVE_MOUSE 1) # FIXME

check_symbol_exists(mremap "unistd.h;sys/mman.h" HAVE_MREMAP)

check_include_file(net/if.h HAVE_NET_IF_H)

check_include_file(nlist.h HAVE_NLIST_H)

# FIXME: HAVE_NS

# FIXME: HAVE_OTF_GET_VARIATION_GLYPHS

# FIXME: HAVE_PERSONALITY_LINUX32

check_library_exists(png png_write_chunk "" HAVE_PNG)

check_include_file(png.h HAVE_PNG_H)

# FIXME: HAVE_POSIX_MEMALIGN

# FIXME: HAVE_PSTAT_GETDYNAMIC

check_include_file(pthread.h HAVE_PTHREAD_H)

check_include_file(pty.h HAVE_PTY_H)

check_include_file(pwd.h HAVE_PWD_H)

# FIXME: HAVE_RANDOM

# FIXME: HAVE_RECVFROM

check_symbol_exists(rename stdio.h HAVE_RENAME)

# FIXME: HAVE_RES_INIT

# FIXME: HAVE_RINT

check_symbol_exists(rmdir "unistd.h" HAVE_RMDIR)

# FIXME: HAVE_RSVG

check_symbol_exists(select "sys/select.h;sys/time.h;sys/types.h;unistd.h" HAVE_SELECT)

# FIXME: HAVE_SENDTO

check_symbol_exists(setitimer sys/time.h HAVE_SETITIMER)

check_symbol_exists(setlocale locale.h HAVE_SETLOCALE)

check_symbol_exists(setpgid unistd.h HAVE_SETPGID)

check_symbol_exists(setrlimit sys/resource.h HAVE_SETRLIMIT)

# FIXME: HAVE_SETSID

# FIXME: HAVE_SETSOCKOPT

# FIXME: HAVE_SHUTDOWN

check_type_exists(size_t "stddef.h" HAVE_SIZE_T)

set(HAVE_SOUND 1) # FIXME

check_include_file(soundcard.h HAVE_SOUNDCARD_H)

check_type_exists("speed_t" termios.h HAVE_SPEED_T)

check_include_file(stdint.h HAVE_STDINT_H)

check_include_file(stdio_ext.h HAVE_STDIO_EXT_H)

check_include_file(stdlib.h HAVE_STDLIB_H)

# FIXME: HAVE_STRCHR

check_symbol_exists(strerror string.h HAVE_STRERROR)

check_symbol_exists(strftime time.h HAVE_STRFTIME)

check_include_file(strings.h HAVE_STRINGS_H)

check_include_file(string.h HAVE_STRING_H)

# FIXME: HAVE_STRRCHR

# FIXME: HAVE_STRSIGNAL

# FIXME: HAVE_STRUCT_IFREQ_IFR_ADDR

# FIXME: HAVE_STRUCT_IFREQ_IFR_BROADADDR

# FIXME: HAVE_STRUCT_IFREQ_IFR_FLAGS

# FIXME: HAVE_STRUCT_IFREQ_IFR_HWADDR

# FIXME: HAVE_STRUCT_IFREQ_IFR_NETMASK

# FIXME: HAVE_STRUCT_NLIST_N_UN_N_NAME

check_struct_has_member("struct tm" tm_zone time.h HAVE_STRUCT_TM_TM_ZONE)

check_type_exists("struct utimbuf" utime.h HAVE_STRUCT_UTIMBUF)

# FIXME: HAVE_SYNC

# FIXME: HAVE_SYSINFO

check_include_file(sys/ioctl.h HAVE_SYS_IOCTL_H)

check_include_file(sys/mman.h HAVE_SYS_MMAN_H)

check_include_file(sys/param.h HAVE_SYS_PARAM_H)

check_include_file(sys/resource.h HAVE_SYS_RESOURCE_H)

check_include_file(sys/select.h HAVE_SYS_SELECT_H)

check_include_file(sys/socket.h HAVE_SYS_SOCKET_H)

check_include_file(sys/soundcard.h HAVE_SYS_SOUNDCARD_H)

check_include_file(sys/stat.h HAVE_SYS_STAT_H)

check_include_file(sys/systeminfo.h HAVE_SYS_SYSTEMINFO_H)

check_include_file(sys/timeb.h HAVE_SYS_TIMEB_H)

check_include_file(sys/time.h HAVE_SYS_TIME_H)

check_include_file(sys/types.h HAVE_SYS_TYPES_H)

check_include_file(sys/un.h HAVE_LOCAL_SOCKETS)

check_include_file(sys/utsname.h HAVE_SYS_UTSNAME_H)

check_include_file(sys/vlimit.h HAVE_SYS_VLIMIT_H)

check_include_file(sys/wait.h HAVE_SYS_WAIT_H)

check_include_file(sys/_mbstate_t.h HAVE_SYS__MBSTATE_T_H)

check_include_file(termios.h HAVE_TERMIOS_H)

check_include_file(term.h HAVE_TERM_H)

# FIXME: HAVE_TIFF

check_type_exists("struct timeval" sys/time.h HAVE_TIMEVAL)

check_struct_has_member("struct tm" tm_gmtoff time.h HAVE_TM_GMTOFF)

check_struct_has_member("struct tm" tm_zone time.h HAVE_TM_ZONE)

# FIXME: HAVE_TOUCHLOCK

# FIXME: HAVE_TZNAME

# FIXME: HAVE_TZSET

# FIXME: HAVE_UALARM

check_include_file(unistd.h HAVE_UNISTD_H)

check_include_file(utimes.h HAVE_UTIMES_H)

check_include_file(utime.h HAVE_UTIME_H)

check_include_file(utmp.h HAVE_UTMP_H)

# FIXME: HAVE_VFORK

check_include_file(vfork.h HAVE_VFORK_H)

set(HAVE_WINDOW_SYSTEM 1) # FIXME

# FIXME: HAVE_WORKING_FORK

# FIXME: HAVE_WORKING_VFORK

# FIXME: implement proper tests and remove conditional
if( NOT WIN32 )
  set(HAVE_X11 1)
  set(HAVE_X11R6 1)
  set(HAVE_X11R6_XIM 1)
  set(HAVE_X11XTR6 1)
endif()

# FIXME: HAVE_XAW3D

check_library_exists(Xft XftDrawChange "" HAVE_XFT)

# FIXME: HAVE_XIM

# FIXME: HAVE_XKBGETKEYBOARD

check_library_exists(Xpm XpmCreatePixmapFromData "" HAVE_XPM)

# FIXME: HAVE_XRMSETDATABASE

# FIXME: HAVE_XSCREENNUMBEROFSCREEN

# FIXME: HAVE_XSCREENRESOURCESTRING

# FIXME: HAVE_XSETWMPROTOCOLS

# FIXME: implement proper tests and remove conditional
if( NOT WIN32 )
  set(HAVE_X_I18N 1)
endif()

# FIXME: HAVE_X_SM

# FIXME: this should be not necessary once it is implemented as an option:
if( NOT WIN32 )
  set(HAVE_X_WINDOWS 1)
endif()

# FIXME: HAVE___FPENDING

# FIXME: HESIOD

# FIXME: KERBEROS

# FIXME: KERBEROS5

# FIXME: LOCALTIME_CACHE

# FIXME: MAILHOST

# FIXME: MAIL_UNLINK_SPOOL

# FIXME: MAIL_USE_FLOCK

# FIXME: MAIL_USE_LOCKF

# FIXME: MAIL_USE_MMDF

# FIXME: MAIL_USE_POP

# FIXME: NLIST_NAME_UNION

# FIXME: NO_MATHERR

# FIXME: NS_HAVE_NSINTEGER

# FIXME: NS_IMPL_COCOA

# FIXME: NS_IMPL_GNUSTEP

# FIXME: ORDINARY_LINK

# PACKAGE_BUGREPORT already set on root CMakeLists.txt

# PACKAGE_NAME already set on root CMakeLists.txt

# PACKAGE_STRING already set on root CMakeLists.txt

# FIXME: PACKAGE_TARNAME

# FIXME: PACKAGE_URL

# PACKAGE_VERSION already set on root CMakeLists.txt

set(POINTER_TYPE void) # FIXME

set(PROTOTYPES 1) # FIXME

# FIXME: REL_ALLOC

set(RETSIGTYPE void) # FIXME

# FIXME: STACK_DIRECTION

set(STDC_HEADERS 1)  # FIXME

# FIXME: SVR4

set(SYNC_INPUT 1) # FIXME

# FIXME: SYSTEM_MALLOC

if( NOT WIN32 )
  set(TERMINFO 1) # FIXME
endif()

set(TIME_WITH_SYS_TIME 1) # FIXME

check_type_exists("struct tm" sys/time.h TM_IN_SYS_TIME)

# FIXME: UMAX

# FIXME: UMAX4_3

# FIXME: USE_GTK

# FIXME: USE_LISP_UNION_TYPE

# FIXME: make it an option
if( NOT WIN32 )
  set(USE_LUCID 1)
endif()

# FIXME: USE_MMAP_FOR_BUFFERS

# FIXME: USE_MOTIF

# _GNU_SOURCE already defined

# FIXME: _POSIX_PTHREAD_SEMANTICS

# FIXME: USE_TOOLKIT_SCROLL_BARS: make it an option

# FIXME: USE_XIM: make it an option

# FIXME: maybe make it an option
if( NOT WIN32 )
  set(USE_X_TOOLKIT 1)
endif()

# FIXME: XMALLOC_OVERRUN_CHECK

# FIXME: XRegisterIMInstantiateCallback_arg6

# FIXME: _FILE_OFFSET_BITS

# FIXME: _LARGEFILE_SOURCE

# FIXME: _LARGE_FILES

# FIXME: _MINIX

# FIXME: _POSIX_1_SOURCE

# FIXME: __GETOPT_PREFIX

set(__PROTOTYPES ${PROTOTYPES})

# FIXME: __restrict

# FIXME: __restrict_arr

# FIXME: Support other platforms:
if( CMAKE_SYSTEM_PROCESSOR STREQUAL "x86" )
  set(config_machfile "m/intel386.h")
else()
  set(config_machfile "m/amdx86-64.h")
endif()

# FIXME: Support other platforms:
message(STATUS "${CMAKE_SYSTEM_NAME}")
if( CMAKE_SYSTEM_NAME STREQUAL "Linux" )
  set(config_opsysfile "s/gnu-linux.h")
elseif( CMAKE_SYSTEM_NAME STREQUAL "Windows" )
  if( CYGWIN )
    set(config_opsysfile "s/cygwin.h")
  else()
    set(config_opsysfile "s/ms-w32.h")
  endif()
elseif( CMAKE_SYSTEM_NAME STREQUAL "Darwin" )
  set(config_opsysfile "s/darwin.h")
else()
  message(FATAL_ERROR "Unknown system")
endif()

# FIXME: const

# FIXME: mbstate_t

# FIXME: pid_t

# FIXME: sys_siglist

if( NOT HAVE_WORKING_VFORK AND HAVE_FORK )
  set(vfork fork)
endif()

# FIXME: volatile

configure_file(
  ${EMACS_ROOT_DIR}/src/config.cmake
  ${EMACS_BUILD_DIR}/src/config.h
  )

set(EMACS_PATH_LOADSEARCH "${EMACS_ROOT_DIR}/lisp")
set(EMACS_PATH_EXEC "${EMACS_ROOT_DIR}/etc")
set(EMACS_PATH_DATA "${EMACS_ROOT_DIR}/etc")
set(EMACS_PATH_DOC "${EMACS_ROOT_DIR}/etc")
configure_file(
  ${EMACS_ROOT_DIR}/src/epaths.cmake
  ${EMACS_BUILD_DIR}/src/epaths.h
  )
