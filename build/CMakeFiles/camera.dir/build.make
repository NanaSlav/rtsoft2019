# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /root/rtsoft2019

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/rtsoft2019/build

# Include any dependencies generated for this target.
include CMakeFiles/camera.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/camera.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/camera.dir/flags.make

CMakeFiles/camera.dir/src.cpp.o: CMakeFiles/camera.dir/flags.make
CMakeFiles/camera.dir/src.cpp.o: ../src.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/rtsoft2019/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/camera.dir/src.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera.dir/src.cpp.o -c /root/rtsoft2019/src.cpp

CMakeFiles/camera.dir/src.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera.dir/src.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/rtsoft2019/src.cpp > CMakeFiles/camera.dir/src.cpp.i

CMakeFiles/camera.dir/src.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera.dir/src.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/rtsoft2019/src.cpp -o CMakeFiles/camera.dir/src.cpp.s

CMakeFiles/camera.dir/src.cpp.o.requires:

.PHONY : CMakeFiles/camera.dir/src.cpp.o.requires

CMakeFiles/camera.dir/src.cpp.o.provides: CMakeFiles/camera.dir/src.cpp.o.requires
	$(MAKE) -f CMakeFiles/camera.dir/build.make CMakeFiles/camera.dir/src.cpp.o.provides.build
.PHONY : CMakeFiles/camera.dir/src.cpp.o.provides

CMakeFiles/camera.dir/src.cpp.o.provides.build: CMakeFiles/camera.dir/src.cpp.o


# Object files for target camera
camera_OBJECTS = \
"CMakeFiles/camera.dir/src.cpp.o"

# External object files for target camera
camera_EXTERNAL_OBJECTS =

camera: CMakeFiles/camera.dir/src.cpp.o
camera: CMakeFiles/camera.dir/build.make
camera: /usr/local/lib/libopencv_stitching.so.3.2.0
camera: /usr/local/lib/libopencv_superres.so.3.2.0
camera: /usr/local/lib/libopencv_videostab.so.3.2.0
camera: /usr/local/lib/libopencv_aruco.so.3.2.0
camera: /usr/local/lib/libopencv_bgsegm.so.3.2.0
camera: /usr/local/lib/libopencv_bioinspired.so.3.2.0
camera: /usr/local/lib/libopencv_ccalib.so.3.2.0
camera: /usr/local/lib/libopencv_dpm.so.3.2.0
camera: /usr/local/lib/libopencv_freetype.so.3.2.0
camera: /usr/local/lib/libopencv_fuzzy.so.3.2.0
camera: /usr/local/lib/libopencv_line_descriptor.so.3.2.0
camera: /usr/local/lib/libopencv_optflow.so.3.2.0
camera: /usr/local/lib/libopencv_reg.so.3.2.0
camera: /usr/local/lib/libopencv_saliency.so.3.2.0
camera: /usr/local/lib/libopencv_stereo.so.3.2.0
camera: /usr/local/lib/libopencv_structured_light.so.3.2.0
camera: /usr/local/lib/libopencv_surface_matching.so.3.2.0
camera: /usr/local/lib/libopencv_tracking.so.3.2.0
camera: /usr/local/lib/libopencv_xfeatures2d.so.3.2.0
camera: /usr/local/lib/libopencv_ximgproc.so.3.2.0
camera: /usr/local/lib/libopencv_xobjdetect.so.3.2.0
camera: /usr/local/lib/libopencv_xphoto.so.3.2.0
camera: /usr/local/lib/libopencv_shape.so.3.2.0
camera: /usr/local/lib/libopencv_phase_unwrapping.so.3.2.0
camera: /usr/local/lib/libopencv_rgbd.so.3.2.0
camera: /usr/local/lib/libopencv_calib3d.so.3.2.0
camera: /usr/local/lib/libopencv_video.so.3.2.0
camera: /usr/local/lib/libopencv_datasets.so.3.2.0
camera: /usr/local/lib/libopencv_dnn.so.3.2.0
camera: /usr/local/lib/libopencv_face.so.3.2.0
camera: /usr/local/lib/libopencv_plot.so.3.2.0
camera: /usr/local/lib/libopencv_text.so.3.2.0
camera: /usr/local/lib/libopencv_features2d.so.3.2.0
camera: /usr/local/lib/libopencv_flann.so.3.2.0
camera: /usr/local/lib/libopencv_objdetect.so.3.2.0
camera: /usr/local/lib/libopencv_ml.so.3.2.0
camera: /usr/local/lib/libopencv_highgui.so.3.2.0
camera: /usr/local/lib/libopencv_photo.so.3.2.0
camera: /usr/local/lib/libopencv_videoio.so.3.2.0
camera: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
camera: /usr/local/lib/libopencv_imgproc.so.3.2.0
camera: /usr/local/lib/libopencv_core.so.3.2.0
camera: CMakeFiles/camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/rtsoft2019/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable camera"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/camera.dir/build: camera

.PHONY : CMakeFiles/camera.dir/build

CMakeFiles/camera.dir/requires: CMakeFiles/camera.dir/src.cpp.o.requires

.PHONY : CMakeFiles/camera.dir/requires

CMakeFiles/camera.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/camera.dir/cmake_clean.cmake
.PHONY : CMakeFiles/camera.dir/clean

CMakeFiles/camera.dir/depend:
	cd /root/rtsoft2019/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/rtsoft2019 /root/rtsoft2019 /root/rtsoft2019/build /root/rtsoft2019/build /root/rtsoft2019/build/CMakeFiles/camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/camera.dir/depend

