# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /box86

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /box86/build

# Utility rule file for PRINTER.

# Include the progress variables for this target.
include CMakeFiles/PRINTER.dir/progress.make

CMakeFiles/PRINTER: ../src/dynarec/last_run.txt


../src/dynarec/last_run.txt: ../src/dynarec/arm_instructions.txt
../src/dynarec/last_run.txt: ../rebuild_printer.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../src/dynarec/last_run.txt"
	/usr/bin/python3.7 /box86/rebuild_printer.py /box86

PRINTER: CMakeFiles/PRINTER
PRINTER: ../src/dynarec/last_run.txt
PRINTER: CMakeFiles/PRINTER.dir/build.make

.PHONY : PRINTER

# Rule to build all files generated by this target.
CMakeFiles/PRINTER.dir/build: PRINTER

.PHONY : CMakeFiles/PRINTER.dir/build

CMakeFiles/PRINTER.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PRINTER.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PRINTER.dir/clean

CMakeFiles/PRINTER.dir/depend:
	cd /box86/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /box86 /box86 /box86/build /box86/build /box86/build/CMakeFiles/PRINTER.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PRINTER.dir/depend

