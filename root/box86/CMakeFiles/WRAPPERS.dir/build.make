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

# Utility rule file for WRAPPERS.

# Include the progress variables for this target.
include CMakeFiles/WRAPPERS.dir/progress.make

CMakeFiles/WRAPPERS: ../src/wrapped/generated/functions_list.txt


../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibc.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibpthread.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibrt.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibgl.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibglu.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibx11.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibasound.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibdl.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibm.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1mixer.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1image.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1ttf.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2mixer.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2image.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2ttf.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsmpeg.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsmpeg2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedvorbisfile.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibvorbis.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibogg.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpng12.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpng16.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxxf86vm.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxrandr.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxext.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedxinerama.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxfixes.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcursor.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxrender.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxi.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxss.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxpm.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxau.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxdmcp.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibx11xcb.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcb.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbxfixes.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbshape.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbshm.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbrandr.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbimage.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbkeysyms.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbxtest.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbdri2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbdri3.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbpresent.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxtst.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxt.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcomposite.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxdamage.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxmu.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibz.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedopenal.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedalut.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibjpeg.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibjpeg62.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedturbojpeg.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedcurl.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedudev0.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedudev1.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbus.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappediconv.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibdrm.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedcrypto.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibssl.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedutil.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibuuid.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibresolv.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpulsesimple.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpulse.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibsndfile.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedfontconfig.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedfreetype.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedbz2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibsm.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibice.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibusb1.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibncursesw.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibformw.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibncurses.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibtinfo.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibncurses6.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibtinfo6.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgtkx112.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgdkx112.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgtk3.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgdk3.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgdkpixbuf2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgio2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgmodule2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgobject2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedglib2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgstreamer010.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgstinterfaces010.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbusmenugtk.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbusmenuglib.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedappindicator.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedatk.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpangoft2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpangocairo.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgthread2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedcairo.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpango.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbusglib1.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgudev1.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibnm.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedtcmallocminimal.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedmpg123.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgnutls.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibcups.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedd3dadapter9.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedvulkan.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedwaylandclient.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedxml2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedxslt.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedldapr.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlber.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappednsl.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlcms2.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedkrb5.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgssapikrb5.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedldlinux.c
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedd3dadapter9_gen.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibc_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibpthread_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibrt_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibgl_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibglu_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibx11_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibasound_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibdl_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibm_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1mixer_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1image_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl1ttf_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2mixer_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2image_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsdl2ttf_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsmpeg_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedsmpeg2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedvorbisfile_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibvorbis_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibogg_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpng12_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpng16_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxxf86vm_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxrandr_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxext_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedxinerama_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxfixes_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcursor_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxrender_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxi_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxss_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxpm_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxau_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxdmcp_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibx11xcb_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcb_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbxfixes_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbshape_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbshm_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbrandr_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbimage_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbkeysyms_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbxtest_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbdri2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbdri3_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcbpresent_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxtst_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxt_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxcomposite_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxdamage_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibxmu_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibz_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedopenal_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedalut_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibjpeg_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibjpeg62_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedturbojpeg_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedcurl_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedudev0_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedudev1_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbus_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappediconv_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibdrm_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedcrypto_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibssl_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedutil_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibuuid_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibresolv_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpulsesimple_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpulse_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibsndfile_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedfontconfig_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedfreetype_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedbz2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibsm_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibice_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibusb1_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibncursesw_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibformw_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibncurses_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibtinfo_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibncurses6_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibtinfo6_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgtkx112_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgdkx112_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgtk3_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgdk3_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgdkpixbuf2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgio2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgmodule2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgobject2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedglib2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgstreamer010_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgstinterfaces010_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbusmenugtk_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbusmenuglib_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedappindicator_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedatk_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpangoft2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpangocairo_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgthread2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedcairo_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedpango_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappeddbusglib1_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgudev1_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibnm_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedtcmallocminimal_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedmpg123_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgnutls_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlibcups_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedd3dadapter9_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedvulkan_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedwaylandclient_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedxml2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedxslt_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedldapr_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlber_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappednsl_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedlcms2_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedkrb5_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedgssapikrb5_private.h
../src/wrapped/generated/functions_list.txt: ../src/wrapped/wrappedldlinux_private.h
../src/wrapped/generated/functions_list.txt: ../rebuild_wrappers.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/box86/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../src/wrapped/generated/functions_list.txt"
	/usr/bin/python3.7 /box86/rebuild_wrappers.py /box86 PANDORA HAVE_LD80BITS NOALIGN HAVE_TRACE POWERPCLE -- /box86/src/wrapped/wrappedd3dadapter9_gen.h /box86/src/wrapped/wrappedlibc_private.h /box86/src/wrapped/wrappedlibpthread_private.h /box86/src/wrapped/wrappedlibrt_private.h /box86/src/wrapped/wrappedlibgl_private.h /box86/src/wrapped/wrappedlibglu_private.h /box86/src/wrapped/wrappedlibx11_private.h /box86/src/wrapped/wrappedlibasound_private.h /box86/src/wrapped/wrappedlibdl_private.h /box86/src/wrapped/wrappedlibm_private.h /box86/src/wrapped/wrappedsdl1_private.h /box86/src/wrapped/wrappedsdl1mixer_private.h /box86/src/wrapped/wrappedsdl1image_private.h /box86/src/wrapped/wrappedsdl1ttf_private.h /box86/src/wrapped/wrappedsdl2_private.h /box86/src/wrapped/wrappedsdl2mixer_private.h /box86/src/wrapped/wrappedsdl2image_private.h /box86/src/wrapped/wrappedsdl2ttf_private.h /box86/src/wrapped/wrappedsmpeg_private.h /box86/src/wrapped/wrappedsmpeg2_private.h /box86/src/wrapped/wrappedvorbisfile_private.h /box86/src/wrapped/wrappedlibvorbis_private.h /box86/src/wrapped/wrappedlibogg_private.h /box86/src/wrapped/wrappedpng12_private.h /box86/src/wrapped/wrappedpng16_private.h /box86/src/wrapped/wrappedlibxxf86vm_private.h /box86/src/wrapped/wrappedlibxrandr_private.h /box86/src/wrapped/wrappedlibxext_private.h /box86/src/wrapped/wrappedxinerama_private.h /box86/src/wrapped/wrappedlibxfixes_private.h /box86/src/wrapped/wrappedlibxcursor_private.h /box86/src/wrapped/wrappedlibxrender_private.h /box86/src/wrapped/wrappedlibxi_private.h /box86/src/wrapped/wrappedlibxss_private.h /box86/src/wrapped/wrappedlibxpm_private.h /box86/src/wrapped/wrappedlibxau_private.h /box86/src/wrapped/wrappedlibxdmcp_private.h /box86/src/wrapped/wrappedlibx11xcb_private.h /box86/src/wrapped/wrappedlibxcb_private.h /box86/src/wrapped/wrappedlibxcbxfixes_private.h /box86/src/wrapped/wrappedlibxcbshape_private.h /box86/src/wrapped/wrappedlibxcbshm_private.h /box86/src/wrapped/wrappedlibxcbrandr_private.h /box86/src/wrapped/wrappedlibxcbimage_private.h /box86/src/wrapped/wrappedlibxcbkeysyms_private.h /box86/src/wrapped/wrappedlibxcbxtest_private.h /box86/src/wrapped/wrappedlibxcbdri2_private.h /box86/src/wrapped/wrappedlibxcbdri3_private.h /box86/src/wrapped/wrappedlibxcbpresent_private.h /box86/src/wrapped/wrappedlibxtst_private.h /box86/src/wrapped/wrappedlibxt_private.h /box86/src/wrapped/wrappedlibxcomposite_private.h /box86/src/wrapped/wrappedlibxdamage_private.h /box86/src/wrapped/wrappedlibxmu_private.h /box86/src/wrapped/wrappedlibz_private.h /box86/src/wrapped/wrappedopenal_private.h /box86/src/wrapped/wrappedalut_private.h /box86/src/wrapped/wrappedlibjpeg_private.h /box86/src/wrapped/wrappedlibjpeg62_private.h /box86/src/wrapped/wrappedturbojpeg_private.h /box86/src/wrapped/wrappedcurl_private.h /box86/src/wrapped/wrappedudev0_private.h /box86/src/wrapped/wrappedudev1_private.h /box86/src/wrapped/wrappeddbus_private.h /box86/src/wrapped/wrappediconv_private.h /box86/src/wrapped/wrappedlibdrm_private.h /box86/src/wrapped/wrappedcrypto_private.h /box86/src/wrapped/wrappedlibssl_private.h /box86/src/wrapped/wrappedutil_private.h /box86/src/wrapped/wrappedlibuuid_private.h /box86/src/wrapped/wrappedlibresolv_private.h /box86/src/wrapped/wrappedpulsesimple_private.h /box86/src/wrapped/wrappedpulse_private.h /box86/src/wrapped/wrappedlibsndfile_private.h /box86/src/wrapped/wrappedfontconfig_private.h /box86/src/wrapped/wrappedfreetype_private.h /box86/src/wrapped/wrappedbz2_private.h /box86/src/wrapped/wrappedlibsm_private.h /box86/src/wrapped/wrappedlibice_private.h /box86/src/wrapped/wrappedlibusb1_private.h /box86/src/wrapped/wrappedlibncursesw_private.h /box86/src/wrapped/wrappedlibformw_private.h /box86/src/wrapped/wrappedlibncurses_private.h /box86/src/wrapped/wrappedlibtinfo_private.h /box86/src/wrapped/wrappedlibncurses6_private.h /box86/src/wrapped/wrappedlibtinfo6_private.h /box86/src/wrapped/wrappedgtkx112_private.h /box86/src/wrapped/wrappedgdkx112_private.h /box86/src/wrapped/wrappedgtk3_private.h /box86/src/wrapped/wrappedgdk3_private.h /box86/src/wrapped/wrappedgdkpixbuf2_private.h /box86/src/wrapped/wrappedgio2_private.h /box86/src/wrapped/wrappedgmodule2_private.h /box86/src/wrapped/wrappedgobject2_private.h /box86/src/wrapped/wrappedglib2_private.h /box86/src/wrapped/wrappedgstreamer010_private.h /box86/src/wrapped/wrappedgstinterfaces010_private.h /box86/src/wrapped/wrappeddbusmenugtk_private.h /box86/src/wrapped/wrappeddbusmenuglib_private.h /box86/src/wrapped/wrappedappindicator_private.h /box86/src/wrapped/wrappedatk_private.h /box86/src/wrapped/wrappedpangoft2_private.h /box86/src/wrapped/wrappedpangocairo_private.h /box86/src/wrapped/wrappedgthread2_private.h /box86/src/wrapped/wrappedcairo_private.h /box86/src/wrapped/wrappedpango_private.h /box86/src/wrapped/wrappeddbusglib1_private.h /box86/src/wrapped/wrappedgudev1_private.h /box86/src/wrapped/wrappedlibnm_private.h /box86/src/wrapped/wrappedtcmallocminimal_private.h /box86/src/wrapped/wrappedmpg123_private.h /box86/src/wrapped/wrappedgnutls_private.h /box86/src/wrapped/wrappedlibcups_private.h /box86/src/wrapped/wrappedd3dadapter9_private.h /box86/src/wrapped/wrappedvulkan_private.h /box86/src/wrapped/wrappedwaylandclient_private.h /box86/src/wrapped/wrappedxml2_private.h /box86/src/wrapped/wrappedxslt_private.h /box86/src/wrapped/wrappedldapr_private.h /box86/src/wrapped/wrappedlber_private.h /box86/src/wrapped/wrappednsl_private.h /box86/src/wrapped/wrappedlcms2_private.h /box86/src/wrapped/wrappedkrb5_private.h /box86/src/wrapped/wrappedgssapikrb5_private.h /box86/src/wrapped/wrappedldlinux_private.h

WRAPPERS: CMakeFiles/WRAPPERS
WRAPPERS: ../src/wrapped/generated/functions_list.txt
WRAPPERS: CMakeFiles/WRAPPERS.dir/build.make

.PHONY : WRAPPERS

# Rule to build all files generated by this target.
CMakeFiles/WRAPPERS.dir/build: WRAPPERS

.PHONY : CMakeFiles/WRAPPERS.dir/build

CMakeFiles/WRAPPERS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/WRAPPERS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/WRAPPERS.dir/clean

CMakeFiles/WRAPPERS.dir/depend:
	cd /box86/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /box86 /box86 /box86/build /box86/build /box86/build/CMakeFiles/WRAPPERS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/WRAPPERS.dir/depend

