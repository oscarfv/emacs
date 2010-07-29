include(AddFileDependencies)

set(COMMON_SOURCES
  alloc.c
  atimer.c
  bidi.c
  buffer.c
  bytecode.c
  callint.c
  callproc.c
  casefiddle.c
  casetab.c
  category.c
  ccl.c
  character.c
  charset.c
  chartab.c
  cmds.c
  coding.c
  composite.c
  data.c
  dbusbind.c
  dired.c
  dispnew.c
  doc.c
  doprnt.c
  dosfns.c
  editfns.c
  emacs.c
  eval.c
  fileio.c
  filelock.c
  filemode.c
  firstfile.c
  floatfns.c
  fns.c
  font.c
  frame.c
  gmalloc.c
  indent.c
  insdel.c
  intervals.c
  keyboard.c
  keymap.c
  lastfile.c
  lread.c
  macros.c
  marker.c
  md5.c
  menu.c
  minibuf.c
  mktime.c
  print.c
  process.c
  ralloc.c
  regex.c
  region-cache.c
  scroll.c
  search.c
  sheap.c
  sound.c
  strftime.c
  syntax.c
  sysdep.c
  term.c
  terminal.c
  textprop.c
  undo.c
  vm-limit.c
  window.c
  xdisp.c
  xfaces.c
  )

if( UNIX )
  set(PLATFORM_SOURCES unexelf.c pre-crt0.c widget.c getloadavg.c cm.c)
  # FIXME: Pick the available libraries as per the platform tests
  set(PLATFORM_LIBRARIES
    Xaw3d Xmu Xt SM ICE Xext
    tiff jpeg png z m gif Xpm
    X11 Xrender Xft
    ncurses
    m gcc c gcc /usr/lib64/crtn.o)
elseif( WIN32 )
  set(PLATFORM_SOURCES
    unexw32.c w32.c w32console.c w32fns.c w32font.c w32heap.c
    w32inevt.c w32menu.c w32proc.c w32reg.c w32select.c w32term.c
    w32uniscribe.c w32xfns.c fringe.c image.c fontset.c)
  # FIXME: Pick the available libraries as per the platform tests
  set(PLATFORM_LIBRARIES advapi32 gdi32 comdlg32 user32 mpr shell32
    winspool ole32 comctl32 usp10 winmm)
else()
  message(FATAL_ERROR "Unsupported platform")
endif()

if( TERMINFO )
  set(TTY_SOURCES terminfo.c)
else()
  set(TTY_SOURCES tparam.c)
endif()

if( HAVE_WINDOW_SYSTEM AND HAVE_X_WINDOWS )
  set(WINDOW_SYSTEM_SOURCES
    fontset.c xfns.c xgselect.c xmenu.c
    xrdb.c xselect.c xsettings.c xsmfns.c xterm.c)

  if( USE_GTK )
    set(WINDOW_SYSTEM_SOURCES ${WINDOW_SYSTEM_SOURCES} gtk.c)
  endif()

  set(FONT_DRIVERS_SOURCES xfont.c)
  if( HAVE_FREETYPE )
    set(FONT_DRIVERS_SOURCES ${FONT_DRIVERS_SOURCES} ftfont.c ftxfont.c)
  endif()
  if( HAVE_XFT )
    set(FONT_DRIVERS_SOURCES ${FONT_DRIVERS_SOURCES} xftfont.c)
  endif()

  set(WINDOW_SYSTEM_SOURCES ${WINDOW_SYSTEM_SOURCES} ${FONT_DRIVERS_SOURCES})
endif()

set(UNUSED_SOURCES
  w16select.c
  msdos.c
  unexaix.c
  unexcw.c
  unexec.c
  unexhp9k800.c
  unexmacosx.c
  unexsol.c
  )

set(ALL_SOURCE_FILES ${ALL_SOURCE_FILES}
  ${COMMON_SOURCES}
  ${PLATFORM_SOURCES}
  ${TTY_SOURCES}
  ${WINDOW_SYSTEM_SOURCES}
  )

string(REPLACE ".c;" ".o " OBJ_FILES "${ALL_SOURCE_FILES}")

add_custom_command(OUTPUT ${EMACS_BUILD_DIR}/src/buildobj.h
  COMMAND ${CMAKE_COMMAND} -E echo "#define BUILDOBJ \\\"${OBJ_FILES}\\\""
  > "${EMACS_BUILD_DIR}/src/buildobj.h"
  COMMENT "Creating buildobj.h"
  )
set_source_files_properties(${EMACS_BUILD_DIR}/src/buildobj.h
  PROPERTIES GENERATED 1)
add_file_dependencies(doc.c ${EMACS_BUILD_DIR}/src/buildobj.h)

add_definitions(-Demacs -DHAVE_CONFIG_H)
if( WIN32 )
  include_directories( ${EMACS_ROOT_DIR}/nt/inc )
endif()
include_directories ( ${CMAKE_CURRENT_BINARY_DIR} )
if( NOT EMACS_BUILD_DIR STREQUAL EMACS_ROOT_DIR )
  include_directories( ${CMAKE_CURRENT_SOURCE_DIR} )
endif()
if( HAVE_FREETYPE )
  include_directories( /usr/include/freetype2 )
endif()

if( WIN32 AND HAVE_WINDOW_SYSTEM )
  add_definitions( -DHAVE_NTGUI )
endif()

add_executable(qemacs ${ALL_SOURCE_FILES})

if( USE_LUCID )
  target_link_libraries(qemacs lw)
endif()

if( WIN32 )
  set_target_properties(qemacs PROPERTIES LINK_FLAGS
    "-Wl,-stack,0x00800000 -Wl,-heap,0x00100000 -Wl,-image-base,0x01000000 -Wl,-subsystem,console -Wl,-entry,__start")
endif()

target_link_libraries(qemacs ${PLATFORM_LIBRARIES})
