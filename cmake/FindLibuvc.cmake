# Find uvc library
# This module defines
# UVC_FOUND - whether the uvc library was found
# UVC_LIBRARIES - the uvc library
# UVC_INCLUDE_DIRS - the include path of the uvc library

find_path(LIBUVC_INCLUDE_DIR
  NAMES libuvc.h
  PATHS
    /opt/homebrew/include/libuvc
    /usr/local/include/libuvc
)

find_library(LIBUVC_LIBRARY
  NAMES uvc
  PATHS
    /opt/homebrew/lib
    /usr/local/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(LIBUVC DEFAULT_MSG LIBUVC_LIBRARY LIBUVC_INCLUDE_DIR)

if(LIBUVC_FOUND)
    set(LIBUVC_LIBRARIES ${LIBUVC_LIBRARY})
    set(LIBUVC_INCLUDE_DIRS ${LIBUVC_INCLUDE_DIR})
endif()
