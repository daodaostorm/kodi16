# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Bootstrap.cmk/cmake

# The command to remove a file.
RM = /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Bootstrap.cmk/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native

# Utility rule file for NightlyTest.

# Include the progress variables for this target.
include CMakeFiles/NightlyTest.dir/progress.make

CMakeFiles/NightlyTest:
	/home/pivos/xbmc-depends/x86_64-linux-gnu-native/bin/ctest -D NightlyTest

NightlyTest: CMakeFiles/NightlyTest
NightlyTest: CMakeFiles/NightlyTest.dir/build.make

.PHONY : NightlyTest

# Rule to build all files generated by this target.
CMakeFiles/NightlyTest.dir/build: NightlyTest

.PHONY : CMakeFiles/NightlyTest.dir/build

CMakeFiles/NightlyTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NightlyTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NightlyTest.dir/clean

CMakeFiles/NightlyTest.dir/depend:
	cd /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/CMakeFiles/NightlyTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NightlyTest.dir/depend

