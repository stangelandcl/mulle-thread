#
# cmake/_Dependencies.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

# sourcetree: MULLE_C11;no-all-load,no-cmakeinherit,no-link,no-recurse,no-singlephase;
if( NOT MULLE_C11_HEADER)
   find_file( MULLE_C11_HEADER NAMES mulle-c11/mulle-c11.h mulle-c11.h)
   message( STATUS "MULLE_C11_HEADER is ${MULLE_C11_HEADER}")

   #
   # Add to list of header files.
   # Disable with: `mark no-cmakeadd`
   #
   set( HEADER_ONLY_LIBRARIES
      ${MULLE_C11_HEADER}
      ${HEADER_ONLY_LIBRARIES}
      CACHE INTERNAL "need to cache this"
   )
   if( MULLE_C11_HEADER)
      # intentionally left blank
   else()
      message( FATAL_ERROR "MULLE_C11_HEADER was not found")
   endif()
endif()
