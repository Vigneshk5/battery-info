# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vigneshk/Downloads/wxWidgets-3.2.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild

# Include any dependencies generated for this target.
include utils/CMakeFiles/wxrc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include utils/CMakeFiles/wxrc.dir/compiler_depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/wxrc.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/wxrc.dir/flags.make

utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o: utils/CMakeFiles/wxrc.dir/flags.make
utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o: /Users/vigneshk/Downloads/wxWidgets-3.2.4/utils/wxrc/wxrc.cpp
utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o: utils/CMakeFiles/wxrc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o"
	cd /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o -MF CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o.d -o CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o -c /Users/vigneshk/Downloads/wxWidgets-3.2.4/utils/wxrc/wxrc.cpp

utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.i"
	cd /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vigneshk/Downloads/wxWidgets-3.2.4/utils/wxrc/wxrc.cpp > CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.i

utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.s"
	cd /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vigneshk/Downloads/wxWidgets-3.2.4/utils/wxrc/wxrc.cpp -o CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.s

# Object files for target wxrc
wxrc_OBJECTS = \
"CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o"

# External object files for target wxrc
wxrc_EXTERNAL_OBJECTS =

lib/wxrc-3.2: utils/CMakeFiles/wxrc.dir/__/__/__/utils/wxrc/wxrc.cpp.o
lib/wxrc-3.2: utils/CMakeFiles/wxrc.dir/build.make
lib/wxrc-3.2: lib/libwx_baseu_xml-3.2.0.2.2.dylib
lib/wxrc-3.2: lib/libwx_baseu-3.2.0.2.2.dylib
lib/wxrc-3.2: utils/CMakeFiles/wxrc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../lib/wxrc-3.2"
	cd /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wxrc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/wxrc.dir/build: lib/wxrc-3.2
.PHONY : utils/CMakeFiles/wxrc.dir/build

utils/CMakeFiles/wxrc.dir/clean:
	cd /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/utils && $(CMAKE_COMMAND) -P CMakeFiles/wxrc.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/wxrc.dir/clean

utils/CMakeFiles/wxrc.dir/depend:
	cd /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vigneshk/Downloads/wxWidgets-3.2.4 /Users/vigneshk/Downloads/wxWidgets-3.2.4/build/cmake/utils /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/utils /Users/vigneshk/Downloads/wxWidgets-3.2.4/macbuild/utils/CMakeFiles/wxrc.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : utils/CMakeFiles/wxrc.dir/depend
