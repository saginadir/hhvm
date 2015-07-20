if (LIBUODBC_LIBRARIES AND LIBUODBC_INCLUDE_DIRS)
  set (LibUODBC_FIND_QUIETLY TRUE)
endif (LIBUODBC_LIBRARIES AND LIBUODBC_INCLUDE_DIRS)

find_path (LIBUODBC_INCLUDE_DIRS NAMES sqlext.h)
find_library (LIBUODBC_LIBRARIES NAMES odbc)
include (FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LibUODBC DEFAULT_MSG
  LIBUODBC_LIBRARIES
  LIBUODBC_INCLUDE_DIRS)

mark_as_advanced(LIBUODBC_INCLUDE_DIRS LIBUODBC_LIBRARIES)
