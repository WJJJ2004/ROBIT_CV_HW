# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/clustering_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/clustering_autogen.dir/ParseCache.txt"
  "clustering_autogen"
  )
endif()
