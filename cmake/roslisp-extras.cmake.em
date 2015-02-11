#
#  Generated from roslisp/cmake/roslisp-extras.cmake.in
#

@[if DEVELSPACE]@
# location of script in develspace
set(ROSLISP_MAKE_NODE_BIN "@(CMAKE_CURRENT_SOURCE_DIR)/scripts/make_node_exec")
@[else]@
# location of script in installspace
set(ROSLISP_MAKE_NODE_BIN "${roslisp_DIR}/../scripts/make_node_exec")
@[end if]@

# Build up a list of executables, in order to make them depend on each
# other, to avoid building them in parallel, because it's not safe to do
# that.
if(NOT ${ROSLISP_EXECUTABLES})
  set(${ROSLISP_EXECUTABLES})
endif()

# example usage:
# add_lisp_executable(my_script my-system my-system:my-func [my_targetname])
function(add_lisp_executable output system_name entry_point)
  if(${ARGC} LESS 3 OR ${ARGC} GREATER 4)
    message(SEND_ERROR "[roslisp] add_lisp_executable can only have 3 or 4 arguments")
  elseif(${ARGC} LESS 4)
    set(targetname _roslisp_${output})
  else()
    set(extra_macro_args ${ARGN})
    list(GET extra_macro_args 0 targetname)
  endif()
  string(REPLACE "/" "_" targetname ${targetname})
  set(targetdir ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_BIN_DESTINATION})

  # Add dummy custom command to get make clean behavior right.
  add_custom_command(OUTPUT ${targetdir}/${output} ${targetdir}/${output}.lisp
    COMMAND echo -n)
  add_custom_target(${targetname} ALL
                     DEPENDS ${targetdir}/${output} ${targetdir}/${output}.lisp
                     COMMAND ${ROSLISP_MAKE_NODE_BIN} ${PROJECT_NAME} ${system_name} ${entry_point} ${targetdir}/${output})

  # Make this executable depend on all previously declared executables, to serialize them.
  add_dependencies(${targetname} rosbuild_precompile ${ROSLISP_EXECUTABLES})
  # Add this executable to the list of executables on which all future
  # executables will depend.
  list(APPEND ROSLISP_EXECUTABLES ${targetname})
  set(ROSLISP_EXECUTABLES "${ROSLISP_EXECUTABLES}" PARENT_SCOPE)

  # mark the generated executables for installation
  install(PROGRAMS ${targetdir}/${output}
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
  install(FILES ${targetdir}/${output}.lisp
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
endfunction(add_lisp_executable)
