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

# Include any dependencies generated for this target.
include Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/depend.make

# Include the progress variables for this target.
include Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/flags.make

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o: Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/flags.make
Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o: Tests/CMakeLib/PseudoMemcheck/ret1.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o"
	cd /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck && /usr/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/memcheck_fail.dir/ret1.cxx.o -c /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck/ret1.cxx

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/memcheck_fail.dir/ret1.cxx.i"
	cd /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck/ret1.cxx > CMakeFiles/memcheck_fail.dir/ret1.cxx.i

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/memcheck_fail.dir/ret1.cxx.s"
	cd /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck && /usr/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck/ret1.cxx -o CMakeFiles/memcheck_fail.dir/ret1.cxx.s

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.requires:

.PHONY : Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.requires

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.provides: Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.requires
	$(MAKE) -f Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/build.make Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.provides.build
.PHONY : Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.provides

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.provides.build: Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o


# Object files for target memcheck_fail
memcheck_fail_OBJECTS = \
"CMakeFiles/memcheck_fail.dir/ret1.cxx.o"

# External object files for target memcheck_fail
memcheck_fail_EXTERNAL_OBJECTS =

Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/build.make
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Source/libCMakeLib.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Source/kwsys/libcmsys.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Utilities/cmexpat/libcmexpat.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Utilities/cmlibarchive/libarchive/libcmlibarchive.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: /home/pivos/xbmc-depends/x86_64-linux-gnu-native/lib/libz.so
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Utilities/cmliblzma/libcmliblzma.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Utilities/cmbzip2/libcmbzip2.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Utilities/cmcompress/libcmcompress.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: /usr/lib/x86_64-linux-gnu/libcurl.so
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Utilities/cmjsoncpp/libcmjsoncpp.a
Tests/CMakeLib/PseudoMemcheck/memcheck_fail: Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable memcheck_fail"
	cd /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/memcheck_fail.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/build: Tests/CMakeLib/PseudoMemcheck/memcheck_fail

.PHONY : Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/build

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/requires: Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/ret1.cxx.o.requires

.PHONY : Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/requires

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/clean:
	cd /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck && $(CMAKE_COMMAND) -P CMakeFiles/memcheck_fail.dir/cmake_clean.cmake
.PHONY : Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/clean

Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/depend:
	cd /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Tests/CMakeLib/PseudoMemcheck/CMakeFiles/memcheck_fail.dir/depend

