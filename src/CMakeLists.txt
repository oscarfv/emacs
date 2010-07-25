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
  cm.c
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
  fontset.c
  frame.c
  fringe.c
  ftfont.c
  ftxfont.c
  getloadavg.c
  gmalloc.c
  image.c
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
  pre-crt0.c
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
  termcap.c
  terminal.c
  terminfo.c
  textprop.c
  undo.c
  unexelf.c
  vm-limit.c
  widget.c
  window.c
  xdisp.c
  xfaces.c
  xfns.c
  xfont.c
  xftfont.c
  xgselect.c
  xmenu.c
  xrdb.c
  xselect.c
  xsettings.c
  xsmfns.c
  xterm.c
  )

set(WINDOWS_SOURCES
  gtkutil.c
  tparam.c
  unexw32.c
  w16select.c
  w32.c
  w32console.c
  w32fns.c
  w32font.c
  w32heap.c
  w32inevt.c
  w32menu.c
  w32proc.c
  w32reg.c
  w32select.c
  w32term.c
  w32uniscribe.c
  w32xfns.c
  )

set(UNUSED_SOURCES
  msdos.c
  unexaix.c
  unexcw.c
  unexec.c
  unexhp9k800.c
  unexmacosx.c
  unexsol.c
  )

set(ALL_SOURCE_FILES ${COMMON_SOURCES})

string(REPLACE .c .o OBJ_FILES ${ALL_SOURCE_FILES})

add_custom_command(OUTPUT ${EMACS_BUILD_DIR}/src/buildobj.h
  COMMAND ${CMAKE_COMMAND} -E echo "\\#define BUILDOBJ \\\"${OBJ_FILES}\\\""
  > "${EMACS_BUILD_DIR}/src/buildobj.h"
  COMMENT "Creating buildobj.h"
  )
set_source_files_properties(${EMACS_BUILD_DIR}/src/buildobj.h
  PROPERTIES GENERATED 1)
add_file_dependencies(doc.c ${EMACS_BUILD_DIR}/src/buildobj.h)

add_definitions(-Demacs -DHAVE_CONFIG_H)
add_definitions(-I. -I${EMACS_BUILD_DIR}/src -I${EMACS_ROOT_DIR}/src)
add_definitions(-I/usr/include/freetype2)

add_executable(qemacs ${ALL_SOURCE_FILES})

if( USE_LUCID )
  target_link_libraries(qemacs lw)
endif()

target_link_libraries(qemacs
  Xaw3d Xmu Xt SM ICE Xext
  tiff jpeg png z m gif Xpm
  X11 Xrender Xft
  ncurses
  m gcc c gcc /usr/lib64/crtn.o)