include(CheckIncludeFile)
include(CheckLibraryExists)
include(CheckSymbolExists)
include(CheckFunctionExists)
include(CheckCXXSourceCompiles)
include(CheckStructHasMember)

# FIXME: dumping can be problematic with C++:
set(CANNOT_DUMP 1)

if( UNIX AND NOT BEOS )
  # Used by check_symbol_exists:
  set(CMAKE_REQUIRED_LIBRARIES m)
endif()

# FIXME:
set(EMACS_CONFIGURATION "\"\"")
set(EMACS_CONFIG_OPTIONS "\"\"")

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

# include checks
check_include_file(argz.h HAVE_ARGZ_H)
check_include_file(assert.h HAVE_ASSERT_H)
check_include_file(dirent.h HAVE_DIRENT_H)
check_include_file(dl.h HAVE_DL_H)
check_include_file(dld.h HAVE_DLD_H)
check_include_file(dlfcn.h HAVE_DLFCN_H)
check_include_file(errno.h HAVE_ERRNO_H)
check_include_file(execinfo.h HAVE_EXECINFO_H)
check_include_file(fcntl.h HAVE_FCNTL_H)
check_include_file(inttypes.h HAVE_INTTYPES_H)
check_include_file(limits.h HAVE_LIMITS_H)
check_include_file(locale.h HAVE_LOCALE_H)
check_include_file(link.h HAVE_LINK_H)
check_include_file(malloc.h HAVE_MALLOC_H)
check_include_file(alloca.h HAVE_ALLOCA_H)
check_include_file(malloc/malloc.h HAVE_MALLOC_MALLOC_H)
check_include_file(memory.h HAVE_MEMORY_H)
check_include_file(ndir.h HAVE_NDIR_H)
if( NOT EMACS_ON_WIN32 )
  check_include_file(pthread.h HAVE_PTHREAD_H)
endif()
check_include_file(setjmp.h HAVE_SETJMP_H)
check_include_file(signal.h HAVE_SIGNAL_H)
check_include_file(stdint.h HAVE_STDINT_H)
check_include_file(stdio.h HAVE_STDIO_H)
check_include_file(stdio_ext.h HAVE_STDIO_EXT_H)
check_include_file(stdlib.h HAVE_STDLIB_H)
check_include_file(string.h HAVE_STRING_H)
check_include_file(strings.h HAVE_STRINGS_H)
check_include_file(sys/dir.h HAVE_SYS_DIR_H)
check_include_file(sys/dl.h HAVE_SYS_DL_H)
check_include_file(sys/ioctl.h HAVE_SYS_IOCTL_H)
check_include_file(sys/mman.h HAVE_SYS_MMAN_H)
check_include_file(sys/ndir.h HAVE_SYS_NDIR_H)
check_include_file(sys/param.h HAVE_SYS_PARAM_H)
check_include_file(sys/resource.h HAVE_SYS_RESOURCE_H)
check_include_file(sys/stat.h HAVE_SYS_STAT_H)
check_include_file(sys/time.h HAVE_SYS_TIME_H)
check_include_file(sys/timeb.h HAVE_SYS_TIMEB_H)
check_include_file(sys/types.h HAVE_SYS_TYPES_H)
check_include_file(sys/wait.h HAVE_SYS_WAIT_H)
check_include_file(termios.h HAVE_TERMIOS_H)
check_include_file(unistd.h HAVE_UNISTD_H)
check_include_file(utime.h HAVE_UTIME_H)
check_include_file(pwd.h HAVE_PWD_H)
check_include_file(sys/utsname.h HAVE_SYS_UTSNAME_H)
check_include_file(sys/resource.h HAVE_SYS_RESOURCE_H)
check_include_file(soundcard.h HAVE_SOUNDCARD_H)
check_include_file(sys/un.h HAVE_LOCAL_SOCKETS)
check_include_file(sys/ioctl.h HAVE_SYS_IOCTL_H)
check_include_file(net/if.h HAVE_NET_IF_H)
check_include_file(sys/wait.h HAVE_SYS_WAIT)
check_include_file(termios.h HAVE_TERMIOS_H)
check_include_file(term.h HAVE_TERM_H)
check_include_file(linux/version.h HAVE_LINUX_VERSION_H)
check_include_file(pthread.h HAVE_PTHREAD_H)
check_include_file(png.h HAVE_PNG_H)
check_include_file(windows.h HAVE_WINDOWS_H)

# library checks
if( NOT EMACS_ON_WIN32 )
  check_library_exists(pthread pthread_create "" HAVE_LIBPTHREADS)
endif()
check_library_exists(png png_write_chunk "" HAVE_PNG)
check_library_exists(Xpm XpmCreatePixmapFromData "" HAVE_XPM)
check_library_exists(Xft XftDrawChange "" HAVE_XFT)
check_library_exists(freetype FT_Render_Glyph "" HAVE_FREETYPE)
check_library_exists(m isnan "" HAVE_LIBM)
check_library_exists(ncurses beep "" HAVE_LIBNCURSES)

# function checks
check_symbol_exists(setlocale locale.h HAVE_SETLOCALE)
check_symbol_exists(getpagesize unistd.h HAVE_GETPAGESIZE)
check_symbol_exists(getrusage sys/resource.h HAVE_GETRUSAGE)
check_symbol_exists(setpgid unistd.h HAVE_SETPGID)
check_symbol_exists(setrlimit sys/resource.h HAVE_SETRLIMIT)
check_symbol_exists(isnan math.h HAVE_ISNAN)
check_symbol_exists(cbrt math.h HAVE_CBRT)
check_symbol_exists(mkstemp "stdlib.h;unistd.h" HAVE_MKSTEMP)
if( NOT EMACS_ON_WIN32 )
  check_symbol_exists(pthread_mutex_lock pthread.h HAVE_PTHREAD_MUTEX_LOCK)
endif()
check_symbol_exists(strerror string.h HAVE_STRERROR)
check_symbol_exists(gai_strerror sys/types.h HAVE_STRERROR)
check_symbol_exists(memmove string.h HAVE_MEMMOVE)
check_symbol_exists(memset string.h HAVE_MEMSET)
check_symbol_exists(memcpy string.h HAVE_MEMCPY)
check_symbol_exists(memcmp string.h HAVE_MEMCMP)
check_symbol_exists(difftime time.h HAVE_DIFFTIME)
check_symbol_exists(ftime sys/timeb.h HAVE_DIFFTIME)
check_symbol_exists(gettimeofday sys/time.h HAVE_GETTIMEOFDAY)
check_symbol_exists(mktime time.h HAVE_MKTIME)
check_symbol_exists(setitimer sys/time.h HAVE_SETITIMER)
check_symbol_exists(strftime time.h HAVE_STRFTIME)
check_symbol_exists(h_errno netdb.h HAVE_H_ERRNO)
check_symbol_exists(select "sys/select.h;sys/time.h;sys/types.h;unistd.h" HAVE_SELECT)
check_symbol_exists(getcwd unistd.h HAVE_GETCWD)
check_symbol_exists(get_current_dir_name unistd.h HAVE_GET_CURRENT_DIR_NAME)
check_symbol_exists(closedir "dirent.h;sys/types.h" HAVE_CLOSEDIR)
check_symbol_exists(mkdir "sys/stat.h;sys/types.h" HAVE_MKDIR)
check_symbol_exists(rmdir "unistd.h" HAVE_RMDIR)
check_symbol_exists(cfmakeraw "termios.h;unistd.h" HAVE_CFMAKERAW)
check_symbol_exists(cfsetspeed "termios.h;unistd.h" HAVE_CFSETSPEED)
check_symbol_exists(fork "unistd.h;sys/types.h" HAVE_FORK)

set(POINTER_TYPE void)

check_symbol_exists(__GLIBC__ stdio.h EMACS_USING_GLIBC)
if( EMACS_USING_GLIBC )
  set(_GNU_SOURCE 1)
  set(DOUG_LEA_MALLOC 1)
endif()

set(headers "")
if (HAVE_SYS_TYPES_H)
  set(headers ${headers} "sys/types.h")
endif()
if (HAVE_INTTYPES_H)
  set(headers ${headers} "inttypes.h")
endif()
if (HAVE_STDINT_H)
  set(headers ${headers} "stdint.h")
endif()

check_type_exists(uint64_t "${headers}" HAVE_UINT64_T)
check_type_exists(u_int64_t "${headers}" HAVE_U_INT64_T)
check_type_exists(size_t "${headers}" HAVE_SIZE_T)
check_type_exists("struct utimbuf" utime.h HAVE_STRUCT_UTIMBUF)
check_type_exists("struct timeval" sys/time.h HAVE_TIMEVAL)
check_type_exists("struct tm" sys/time.h TM_IN_SYS_TIME)
check_type_exists("speed_t" termios.h HAVE_SPEED_T)

check_struct_has_member("struct tm" tm_zone time.h HAVE_STRUCT_TM_TM_ZONE)
check_struct_has_member("struct tm" tm_zone time.h HAVE_TM_ZONE)
check_struct_has_member("struct tm" tm_gmtoff time.h HAVE_TM_GMTOFF)

if( HAVE_SYS_TIME_H )
  # Define to 1 if you can safely include both <sys/time.h> and <time.h>
  # FIXME: and what "safely" means here?
  set(TIME_WITH_SYS_TIME 1)
endif()

# FIXME:
set(GETPGRP_VOID 1)
set(SYNC_INPUT 1)

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

# FIXME: Support other platforms:
set(config_machfile "m/amdx86-64.h")
set(config_opsysfile "s/gnu-linux.h")

if( MINGW )
  set(HAVE_LIBIMAGEHLP 1)
  set(HAVE_LIBPSAPI 1)
  # TODO: Check existence of libraries.
  #   include(CheckLibraryExists)
  #   CHECK_LIBRARY_EXISTS(imagehlp ??? . HAVE_LIBIMAGEHLP)
endif( MINGW )

if( MSVC )
  set(error_t int)
  set(mode_t "unsigned short")
  set(LTDL_SHLIBPATH_VAR "PATH")
  set(LTDL_SYSSEARCHPATH "")
  set(LTDL_DLOPEN_DEPLIBS 1)
  set(SHLIBEXT ".lib")
  set(LTDL_OBJDIR "_libs")
  set(HAVE_STRTOLL 1)
  set(strtoll "_strtoi64")
  set(strtoull "_strtoui64")
  set(stricmp "_stricmp")
  set(strdup "_strdup")
else( MSVC )
  set(LTDL_SHLIBPATH_VAR "LD_LIBRARY_PATH")
  set(LTDL_SYSSEARCHPATH "") # TODO
  set(LTDL_DLOPEN_DEPLIBS 0)  # TODO
endif( MSVC )

# FIXME: Signal handler return type, currently hardcoded to 'void'
set(RETSIGTYPE void)

# FIXME: what's the test for this?
set(STDC_HEADERS 1)

set(subprocesses 1)
set(HAVE_LONG_FILE_NAMES 1)

# FIXME: what's the test for those?
set(HAVE_SOCKETS 1)
set(TERMINFO 1)
set(HAVE_WINDOW_SYSTEM 1)
set(HAVE_MOUSE 1)

if( NOT WIN32 )
  set(HAVE_X_WINDOWS 1)
  set(HAVE_MENUS 1)
  set(USE_X_TOOLKIT 1)
  set(USE_LUCID 1)
  # FIXME: add tests for those:
  set(HAVE_X11 1)
  set(HAVE_X11R6 1)
  set(HAVE_X11R6_XIM 1)
  set(HAVE_X11XTR6 1)
  set(HAVE_X_I18N 1)
endif()

configure_file(
  ${EMACS_ROOT_DIR}/src/config.cmake
  ${EMACS_BUILD_DIR}/src/config.h
  )

# FIXME: this should be adapted to other platforms. Currently it
# contains values for my local build.
configure_file(
  ${EMACS_ROOT_DIR}/src/epaths.cmake
  ${EMACS_BUILD_DIR}/src/epaths.h
  )
