project(Emacs)
cmake_minimum_required(VERSION 2.6.1)

set(PACKAGE_NAME emacs)
set(PACKAGE_VERSION dev)
set(PACKAGE_STRING "${PACKAGE_NAME} ${PACKAGE_VERSION}")
# This project doesn't belong to GNU Emacs yet:
# set(PACKAGE_BUGREPORT "bug-gnu-emacs@gnu.org")

string(TOUPPER "${CMAKE_BUILD_TYPE}" uppercase_CMAKE_BUILD_TYPE)

set(EMACS_ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(EMACS_BUILD_DIR ${CMAKE_CURRENT_BINARY_DIR})

include(cmake/configure.cmake)

if( USE_LUCID )
  add_subdirectory(lwlib)
endif()

add_subdirectory(src)

# TODO:
# elisp
# info files
# install
