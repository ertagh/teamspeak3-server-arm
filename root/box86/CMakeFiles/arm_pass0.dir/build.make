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

# Include any dependencies generated for this target.
include CMakeFiles/arm_pass0.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/arm_pass0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/arm_pass0.dir/flags.make

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.o: ../src/dynarec/dynarec_arm_helper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.o   -c /box86/src/dynarec/dynarec_arm_helper.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_helper.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_helper.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.o: ../src/dynarec/dynarec_arm_emit_tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.o   -c /box86/src/dynarec/dynarec_arm_emit_tests.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_emit_tests.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_emit_tests.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.o: ../src/dynarec/dynarec_arm_emit_math.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.o   -c /box86/src/dynarec/dynarec_arm_emit_math.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_emit_math.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_emit_math.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.o: ../src/dynarec/dynarec_arm_emit_logic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.o   -c /box86/src/dynarec/dynarec_arm_emit_logic.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_emit_logic.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_emit_logic.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.o: ../src/dynarec/dynarec_arm_emit_shift.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.o   -c /box86/src/dynarec/dynarec_arm_emit_shift.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_emit_shift.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_emit_shift.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.o: ../src/dynarec/dynarec_arm_pass.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.o   -c /box86/src/dynarec/dynarec_arm_pass.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_pass.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_pass.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.o: ../src/dynarec/dynarec_arm_00.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.o   -c /box86/src/dynarec/dynarec_arm_00.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_00.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_00.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.o: ../src/dynarec/dynarec_arm_0f.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.o   -c /box86/src/dynarec/dynarec_arm_0f.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_0f.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_0f.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.o: ../src/dynarec/dynarec_arm_64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.o   -c /box86/src/dynarec/dynarec_arm_64.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_64.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_64.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.o: ../src/dynarec/dynarec_arm_65.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.o   -c /box86/src/dynarec/dynarec_arm_65.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_65.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_65.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.o: ../src/dynarec/dynarec_arm_66.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.o   -c /box86/src/dynarec/dynarec_arm_66.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_66.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_66.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.o: ../src/dynarec/dynarec_arm_67.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.o   -c /box86/src/dynarec/dynarec_arm_67.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_67.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_67.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.o: ../src/dynarec/dynarec_arm_d8.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.o   -c /box86/src/dynarec/dynarec_arm_d8.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_d8.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_d8.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.o: ../src/dynarec/dynarec_arm_d9.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.o   -c /box86/src/dynarec/dynarec_arm_d9.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_d9.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_d9.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.o: ../src/dynarec/dynarec_arm_da.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.o   -c /box86/src/dynarec/dynarec_arm_da.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_da.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_da.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.o: ../src/dynarec/dynarec_arm_db.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.o   -c /box86/src/dynarec/dynarec_arm_db.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_db.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_db.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.o: ../src/dynarec/dynarec_arm_dc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.o   -c /box86/src/dynarec/dynarec_arm_dc.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_dc.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_dc.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.o: ../src/dynarec/dynarec_arm_dd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.o   -c /box86/src/dynarec/dynarec_arm_dd.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_dd.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_dd.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.o: ../src/dynarec/dynarec_arm_de.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.o   -c /box86/src/dynarec/dynarec_arm_de.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_de.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_de.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.o: ../src/dynarec/dynarec_arm_df.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.o   -c /box86/src/dynarec/dynarec_arm_df.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_df.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_df.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.o: ../src/dynarec/dynarec_arm_f0.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.o   -c /box86/src/dynarec/dynarec_arm_f0.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_f0.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_f0.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.o: ../src/dynarec/dynarec_arm_660f.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.o   -c /box86/src/dynarec/dynarec_arm_660f.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_660f.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_660f.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.o: ../src/dynarec/dynarec_arm_f20f.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.o   -c /box86/src/dynarec/dynarec_arm_f20f.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_f20f.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_f20f.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.s

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.o: CMakeFiles/arm_pass0.dir/flags.make
CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.o: ../src/dynarec/dynarec_arm_f30f.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Building C object CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.o   -c /box86/src/dynarec/dynarec_arm_f30f.c

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /box86/src/dynarec/dynarec_arm_f30f.c > CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.i

CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /box86/src/dynarec/dynarec_arm_f30f.c -o CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.s

arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_helper.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_tests.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_math.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_logic.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_emit_shift.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_pass.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_00.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_0f.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_64.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_65.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_66.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_67.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d8.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_d9.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_da.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_db.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dc.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_dd.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_de.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_df.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f0.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_660f.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f20f.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/src/dynarec/dynarec_arm_f30f.c.o
arm_pass0: CMakeFiles/arm_pass0.dir/build.make

.PHONY : arm_pass0

# Rule to build all files generated by this target.
CMakeFiles/arm_pass0.dir/build: arm_pass0

.PHONY : CMakeFiles/arm_pass0.dir/build

CMakeFiles/arm_pass0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/arm_pass0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/arm_pass0.dir/clean

CMakeFiles/arm_pass0.dir/depend:
	cd /box86/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /box86 /box86 /box86/build /box86/build /box86/build/CMakeFiles/arm_pass0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/arm_pass0.dir/depend

