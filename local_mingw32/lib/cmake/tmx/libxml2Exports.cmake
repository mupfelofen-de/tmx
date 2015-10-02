# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_DIR}" DIRECTORY)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" DIRECTORY)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" DIRECTORY)

# Mock FindLibXml2
set(LIBXML2_FOUND ON)
set(LIBXML2_INCLUDE_DIR "${_IMPORT_PREFIX}/include/libxml2" CACHE PATH "The LibXml2 include directory")
set(LIBXML2_LIBRARIES "${_IMPORT_PREFIX}/lib/libxml2.a" CACHE STRING "The libraries needed to use LibXml2")
set(LIBXML2_DEFINITIONS "")
set(LIBXML2_XMLLINT_EXECUTABLE "${_IMPORT_PREFIX}/bin/xmllint.exe" CACHE FILEPATH "The XML checking tool xmllint coming with LibXml2")
set(LIBXML2_VERSION_STRING "2.9.2")

mark_as_advanced(LIBXML2_INCLUDE_DIR LIBXML2_LIBRARIES LIBXML2_XMLLINT_EXECUTABLE)

# Imported targets (not FindLibXml2)
# Create imported target libxml2 with ${LIBXML2_INCLUDE_DIR} and ${LIBXML2_LIBRARIES} variables
add_library(libxml2 UNKNOWN IMPORTED)
set_target_properties(libxml2 PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${LIBXML2_INCLUDE_DIR}
  IMPORTED_LOCATION ${LIBXML2_LIBRARIES}
)

# Create imported target libxml2_shared
add_library(libxml2_shared SHARED IMPORTED)
set_target_properties(libxml2_shared PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${LIBXML2_INCLUDE_DIR}
  IMPORTED_IMPLIB "${_IMPORT_PREFIX}/lib/libxml2.dll.a"
  IMPORTED_LOCATION "${_IMPORT_PREFIX}/bin/libxml2.dll"
)

