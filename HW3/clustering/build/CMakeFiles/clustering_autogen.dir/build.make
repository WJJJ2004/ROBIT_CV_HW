# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering/build

# Utility rule file for clustering_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/clustering_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/clustering_autogen.dir/progress.make

CMakeFiles/clustering_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target clustering"
	/usr/bin/cmake -E cmake_autogen /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering/build/CMakeFiles/clustering_autogen.dir/AutogenInfo.json ""

clustering_autogen: CMakeFiles/clustering_autogen
clustering_autogen: CMakeFiles/clustering_autogen.dir/build.make
.PHONY : clustering_autogen

# Rule to build all files generated by this target.
CMakeFiles/clustering_autogen.dir/build: clustering_autogen
.PHONY : CMakeFiles/clustering_autogen.dir/build

CMakeFiles/clustering_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clustering_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clustering_autogen.dir/clean

CMakeFiles/clustering_autogen.dir/depend:
	cd /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering/build /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering/build /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW3/clustering/build/CMakeFiles/clustering_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clustering_autogen.dir/depend

