# CMake generated Testfile for 
# Source directory: /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib
# Build directory: /home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(CMakeLib.testGeneratedFileStream "CMakeLibTests" "testGeneratedFileStream")
add_test(CMakeLib.testRST "CMakeLibTests" "testRST" "/home/pivos/proj/xbmc-16.1-Jarvis/tools/depends/native/cmake-native/x86_64-linux-native/Tests/CMakeLib")
add_test(CMakeLib.testSystemTools "CMakeLibTests" "testSystemTools")
add_test(CMakeLib.testUTF8 "CMakeLibTests" "testUTF8")
add_test(CMakeLib.testXMLParser "CMakeLibTests" "testXMLParser")
add_test(CMakeLib.testXMLSafe "CMakeLibTests" "testXMLSafe")
subdirs(PseudoMemcheck)
