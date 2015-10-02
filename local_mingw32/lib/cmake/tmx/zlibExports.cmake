# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" DIRECTORY)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" DIRECTORY)

# Mock FindZLIB
set(ZLIB_INCLUDE_DIR "${_IMPORT_PREFIX}/include" CACHE PATH "where to find zlib.h, etc.")
set(ZLIB_LIBRARY "${_IMPORT_PREFIX}/lib/libzlibstatic.a" CACHE STRING "List of libraries when using zlib.")

set(ZLIB_INCLUDE_DIRS ${ZLIB_INCLUDE_DIR})
set(ZLIB_LIBRARIES ${ZLIB_LIBRARY})
set(ZLIB_FOUND ON)
set(ZLIB_VERSION_STRING "1.2.8")
set(ZLIB_VERSION_MAJOR "1")
set(ZLIB_VERSION_MINOR "2")
set(ZLIB_VERSION_PATCH "8")
set(ZLIB_VERSION_TWEAK  "")
set(ZLIB_MAJOR_VERSION "1")
set(ZLIB_MINOR_VERSION "2")
set(ZLIB_PATCH_VERSION "8")

mark_as_advanced(ZLIB_INCLUDE_DIR ZLIB_LIBRARY)

# Create imported target ZLIB::ZLIB with ${ZLIB_INCLUDE_DIRS} and ${ZLIB_LIBRARIES} variables
add_library(ZLIB::ZLIB UNKNOWN IMPORTED)
set_target_properties(ZLIB::ZLIB PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${ZLIB_INCLUDE_DIRS}
  IMPORTED_LOCATION ${ZLIB_LIBRARIES}
)

# Create imported target ZLIB::ZLIB_SHARED (not FindZLIB)
add_library(ZLIB::ZLIB_SHARED SHARED IMPORTED)
set_target_properties(ZLIB::ZLIB_SHARED PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${ZLIB_INCLUDE_DIRS}
  IMPORTED_IMPLIB "${_IMPORT_PREFIX}/lib/libzlib.dll.a"
  IMPORTED_LOCATION "${_IMPORT_PREFIX}/bin/libzlib.dll"
)

