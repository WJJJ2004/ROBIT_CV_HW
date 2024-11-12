# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/least_square_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/least_square_autogen.dir/ParseCache.txt"
  "least_square_autogen"
  )
endif()
