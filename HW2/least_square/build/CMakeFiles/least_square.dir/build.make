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
CMAKE_SOURCE_DIR = /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build

# Include any dependencies generated for this target.
include CMakeFiles/least_square.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/least_square.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/least_square.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/least_square.dir/flags.make

least_square_autogen/EWIEGA46WW/qrc_least_square.cpp: ../least_square.qrc
least_square_autogen/EWIEGA46WW/qrc_least_square.cpp: CMakeFiles/least_square_autogen.dir/AutoRcc_least_square_EWIEGA46WW_Info.json
least_square_autogen/EWIEGA46WW/qrc_least_square.cpp: ../resources/data/coordinates.csv
least_square_autogen/EWIEGA46WW/qrc_least_square.cpp: /usr/lib/qt5/bin/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic RCC for least_square.qrc"
	/usr/bin/cmake -E cmake_autorcc /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles/least_square_autogen.dir/AutoRcc_least_square_EWIEGA46WW_Info.json 

CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o: CMakeFiles/least_square.dir/flags.make
CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o: least_square_autogen/mocs_compilation.cpp
CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o: CMakeFiles/least_square.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o -MF CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o -c /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/least_square_autogen/mocs_compilation.cpp

CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/least_square_autogen/mocs_compilation.cpp > CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.i

CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/least_square_autogen/mocs_compilation.cpp -o CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.s

CMakeFiles/least_square.dir/main.cpp.o: CMakeFiles/least_square.dir/flags.make
CMakeFiles/least_square.dir/main.cpp.o: ../main.cpp
CMakeFiles/least_square.dir/main.cpp.o: CMakeFiles/least_square.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/least_square.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/least_square.dir/main.cpp.o -MF CMakeFiles/least_square.dir/main.cpp.o.d -o CMakeFiles/least_square.dir/main.cpp.o -c /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/main.cpp

CMakeFiles/least_square.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/least_square.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/main.cpp > CMakeFiles/least_square.dir/main.cpp.i

CMakeFiles/least_square.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/least_square.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/main.cpp -o CMakeFiles/least_square.dir/main.cpp.s

CMakeFiles/least_square.dir/mainwindow.cpp.o: CMakeFiles/least_square.dir/flags.make
CMakeFiles/least_square.dir/mainwindow.cpp.o: ../mainwindow.cpp
CMakeFiles/least_square.dir/mainwindow.cpp.o: CMakeFiles/least_square.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/least_square.dir/mainwindow.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/least_square.dir/mainwindow.cpp.o -MF CMakeFiles/least_square.dir/mainwindow.cpp.o.d -o CMakeFiles/least_square.dir/mainwindow.cpp.o -c /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/mainwindow.cpp

CMakeFiles/least_square.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/least_square.dir/mainwindow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/mainwindow.cpp > CMakeFiles/least_square.dir/mainwindow.cpp.i

CMakeFiles/least_square.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/least_square.dir/mainwindow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/mainwindow.cpp -o CMakeFiles/least_square.dir/mainwindow.cpp.s

CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o: CMakeFiles/least_square.dir/flags.make
CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o: least_square_autogen/EWIEGA46WW/qrc_least_square.cpp
CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o: CMakeFiles/least_square.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o -MF CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o.d -o CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o -c /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp

CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp > CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.i

CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp -o CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.s

# Object files for target least_square
least_square_OBJECTS = \
"CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/least_square.dir/main.cpp.o" \
"CMakeFiles/least_square.dir/mainwindow.cpp.o" \
"CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o"

# External object files for target least_square
least_square_EXTERNAL_OBJECTS =

least_square: CMakeFiles/least_square.dir/least_square_autogen/mocs_compilation.cpp.o
least_square: CMakeFiles/least_square.dir/main.cpp.o
least_square: CMakeFiles/least_square.dir/mainwindow.cpp.o
least_square: CMakeFiles/least_square.dir/least_square_autogen/EWIEGA46WW/qrc_least_square.cpp.o
least_square: CMakeFiles/least_square.dir/build.make
least_square: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
least_square: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
least_square: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
least_square: CMakeFiles/least_square.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable least_square"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/least_square.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/least_square.dir/build: least_square
.PHONY : CMakeFiles/least_square.dir/build

CMakeFiles/least_square.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/least_square.dir/cmake_clean.cmake
.PHONY : CMakeFiles/least_square.dir/clean

CMakeFiles/least_square.dir/depend: least_square_autogen/EWIEGA46WW/qrc_least_square.cpp
	cd /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build /home/lwj/Documents/GitHub/ROBIT_CV_HW/HW2/least_square/build/CMakeFiles/least_square.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/least_square.dir/depend

