add_definitions(-Demacs -DHAVE_CONFIG_H)
add_definitions(-I. -I${EMACS_BUILD_DIR}/src -I${EMACS_ROOT_DIR}/src)
add_definitions(-I/usr/include/freetype2)

add_library(lw STATIC
  lwlib.c
  lwlib-utils.c
  lwlib-Xaw.c
  lwlib-Xlw.c
#  lwlib-Xm.c
  xlwmenu.c
  )
