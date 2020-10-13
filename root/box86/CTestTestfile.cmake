# CMake generated Testfile for 
# Source directory: /box86
# Build directory: /box86/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test01 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test01" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref01.txt" "-P" "/box86/runTest.cmake")
add_test(test02 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test02" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref02.txt" "-P" "/box86/runTest.cmake")
add_test(test03 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test03" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref03.txt" "-P" "/box86/runTest.cmake")
add_test(test04 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test04" "-D" "TEST_ARGS2=yeah" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref04.txt" "-P" "/box86/runTest.cmake")
add_test(test05 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test05" "-D" "TEST_ARGS2=7" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref05.txt" "-P" "/box86/runTest.cmake")
add_test(test06 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test06" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref06.txt" "-P" "/box86/runTest.cmake")
add_test(test07 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test07" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref07.txt" "-P" "/box86/runTest.cmake")
add_test(test08 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test08" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref08.txt" "-P" "/box86/runTest.cmake")
add_test(test09 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test09" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref09.txt" "-P" "/box86/runTest.cmake")
add_test(test10 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test10" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref10.txt" "-P" "/box86/runTest.cmake")
add_test(test11 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test11" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref11.txt" "-P" "/box86/runTest.cmake")
add_test(test12 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test12" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref12.txt" "-P" "/box86/runTest.cmake")
add_test(test13 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test13" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref13.txt" "-P" "/box86/runTest.cmake")
add_test(test14 "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/test14" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/ref14.txt" "-P" "/box86/runTest.cmake")
add_test(mmx "/usr/bin/cmake" "-D" "TEST_PROGRAM=/box86/build/box86" "-D" "TEST_ARGS=/box86/tests/extensions/mmx" "-D" "TEST_OUTPUT=tmpfile.txt" "-D" "TEST_REFERENCE=/box86/tests/extensions/mmx.txt" "-P" "/box86/runTest.cmake")
