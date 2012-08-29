cmake_minimum_required(VERSION 2.8)
project(roslisp)
find_package(catkin REQUIRED)

catkin_stack()

catkin_project(roslisp
  CFG_EXTRAS roslisp-extras.cmake)
add_subdirectory(env-hooks)

foreach(dir
    asdf
    load-manifest
    rosbuild
    roslisp-msg-protocol
    src
    s-xml
    s-xml-rpc
    utils)
  install(DIRECTORY ${dir}
      DESTINATION share/${PROJECT_NAME}
      PATTERN ".svn" EXCLUDE
      PATTERN "genmsg_lisp.py" EXCLUDE)
endforeach()

install(FILES manifest.xml
    DESTINATION share/${PROJECT_NAME})
install(FILES rosbuild/roslisp.cmake
    DESTINATION share/${PROJECT_NAME}/rosbuild)
install(PROGRAMS rosbuild/scripts/genmsg_lisp.py
    DESTINATION share/${PROJECT_NAME}/rosbuild/scripts)

install(DIRECTORY scripts
  DESTINATION share/${PROJECT_NAME}
  USE_SOURCE_PERMISSIONS
  PATTERN ".svn" EXCLUDE
  PATTERN "genmsg_lisp.py" EXCLUDE)

