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
CMAKE_SOURCE_DIR = /home/ubantu/c++/集群聊天服务器

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubantu/c++/集群聊天服务器/build

# Include any dependencies generated for this target.
include src/server/CMakeFiles/Chatserver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/server/CMakeFiles/Chatserver.dir/compiler_depend.make

# Include the progress variables for this target.
include src/server/CMakeFiles/Chatserver.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/CMakeFiles/Chatserver.dir/flags.make

src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.o: ../src/server/chatserver.cpp
src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.o -MF CMakeFiles/Chatserver.dir/chatserver.cpp.o.d -o CMakeFiles/Chatserver.dir/chatserver.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/chatserver.cpp

src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/chatserver.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/chatserver.cpp > CMakeFiles/Chatserver.dir/chatserver.cpp.i

src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/chatserver.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/chatserver.cpp -o CMakeFiles/Chatserver.dir/chatserver.cpp.s

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o: ../src/server/chatservice.cpp
src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o -MF CMakeFiles/Chatserver.dir/chatservice.cpp.o.d -o CMakeFiles/Chatserver.dir/chatservice.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/chatservice.cpp

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/chatservice.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/chatservice.cpp > CMakeFiles/Chatserver.dir/chatservice.cpp.i

src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/chatservice.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/chatservice.cpp -o CMakeFiles/Chatserver.dir/chatservice.cpp.s

src/server/CMakeFiles/Chatserver.dir/main.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/main.cpp.o: ../src/server/main.cpp
src/server/CMakeFiles/Chatserver.dir/main.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/server/CMakeFiles/Chatserver.dir/main.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/main.cpp.o -MF CMakeFiles/Chatserver.dir/main.cpp.o.d -o CMakeFiles/Chatserver.dir/main.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/main.cpp

src/server/CMakeFiles/Chatserver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/main.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/main.cpp > CMakeFiles/Chatserver.dir/main.cpp.i

src/server/CMakeFiles/Chatserver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/main.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/main.cpp -o CMakeFiles/Chatserver.dir/main.cpp.s

src/server/CMakeFiles/Chatserver.dir/db/db.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/db/db.cpp.o: ../src/server/db/db.cpp
src/server/CMakeFiles/Chatserver.dir/db/db.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/server/CMakeFiles/Chatserver.dir/db/db.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/db/db.cpp.o -MF CMakeFiles/Chatserver.dir/db/db.cpp.o.d -o CMakeFiles/Chatserver.dir/db/db.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/db/db.cpp

src/server/CMakeFiles/Chatserver.dir/db/db.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/db/db.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/db/db.cpp > CMakeFiles/Chatserver.dir/db/db.cpp.i

src/server/CMakeFiles/Chatserver.dir/db/db.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/db/db.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/db/db.cpp -o CMakeFiles/Chatserver.dir/db/db.cpp.s

src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o: ../src/server/model/friendmodel.cpp
src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o -MF CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o.d -o CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/model/friendmodel.cpp

src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/model/friendmodel.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/model/friendmodel.cpp > CMakeFiles/Chatserver.dir/model/friendmodel.cpp.i

src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/model/friendmodel.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/model/friendmodel.cpp -o CMakeFiles/Chatserver.dir/model/friendmodel.cpp.s

src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o: ../src/server/model/groupmodel.cpp
src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o -MF CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o.d -o CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/model/groupmodel.cpp

src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/model/groupmodel.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/model/groupmodel.cpp > CMakeFiles/Chatserver.dir/model/groupmodel.cpp.i

src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/model/groupmodel.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/model/groupmodel.cpp -o CMakeFiles/Chatserver.dir/model/groupmodel.cpp.s

src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o: ../src/server/model/offlinemessagemodel.cpp
src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o -MF CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o.d -o CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/model/offlinemessagemodel.cpp

src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/model/offlinemessagemodel.cpp > CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.i

src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/model/offlinemessagemodel.cpp -o CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.s

src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/flags.make
src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.o: ../src/server/model/usermodel.cpp
src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.o: src/server/CMakeFiles/Chatserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.o"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.o -MF CMakeFiles/Chatserver.dir/model/usermodel.cpp.o.d -o CMakeFiles/Chatserver.dir/model/usermodel.cpp.o -c /home/ubantu/c++/集群聊天服务器/src/server/model/usermodel.cpp

src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chatserver.dir/model/usermodel.cpp.i"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubantu/c++/集群聊天服务器/src/server/model/usermodel.cpp > CMakeFiles/Chatserver.dir/model/usermodel.cpp.i

src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chatserver.dir/model/usermodel.cpp.s"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubantu/c++/集群聊天服务器/src/server/model/usermodel.cpp -o CMakeFiles/Chatserver.dir/model/usermodel.cpp.s

# Object files for target Chatserver
Chatserver_OBJECTS = \
"CMakeFiles/Chatserver.dir/chatserver.cpp.o" \
"CMakeFiles/Chatserver.dir/chatservice.cpp.o" \
"CMakeFiles/Chatserver.dir/main.cpp.o" \
"CMakeFiles/Chatserver.dir/db/db.cpp.o" \
"CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o" \
"CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o" \
"CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o" \
"CMakeFiles/Chatserver.dir/model/usermodel.cpp.o"

# External object files for target Chatserver
Chatserver_EXTERNAL_OBJECTS =

../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/chatserver.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/chatservice.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/main.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/db/db.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/model/friendmodel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/model/groupmodel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/model/offlinemessagemodel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/model/usermodel.cpp.o
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/build.make
../bin/Chatserver: src/server/CMakeFiles/Chatserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubantu/c++/集群聊天服务器/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../../../bin/Chatserver"
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Chatserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/CMakeFiles/Chatserver.dir/build: ../bin/Chatserver
.PHONY : src/server/CMakeFiles/Chatserver.dir/build

src/server/CMakeFiles/Chatserver.dir/clean:
	cd /home/ubantu/c++/集群聊天服务器/build/src/server && $(CMAKE_COMMAND) -P CMakeFiles/Chatserver.dir/cmake_clean.cmake
.PHONY : src/server/CMakeFiles/Chatserver.dir/clean

src/server/CMakeFiles/Chatserver.dir/depend:
	cd /home/ubantu/c++/集群聊天服务器/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubantu/c++/集群聊天服务器 /home/ubantu/c++/集群聊天服务器/src/server /home/ubantu/c++/集群聊天服务器/build /home/ubantu/c++/集群聊天服务器/build/src/server /home/ubantu/c++/集群聊天服务器/build/src/server/CMakeFiles/Chatserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/CMakeFiles/Chatserver.dir/depend
