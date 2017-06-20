^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package roslisp
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.9.21 (2017-06-20)
-------------------
* Merge pull request `#33 <https://github.com/ros/roslisp/issues/33>`_ from gaya-/master
  Got rid of /bin/bash, using /usr/bin/env bash instead.
* Merge pull request `#34 <https://github.com/ros/roslisp/issues/34>`_ from gaya-/check-node-name
  Added a check on node name when creating a node
* Merge pull request `#36 <https://github.com/ros/roslisp/issues/36>`_ from gaya-/arguments-in-make-request
  Added support for nested message fields in MAKE-REQUEST
  Fully backwards compatible, no API breakage.
* Merge pull request `#35 <https://github.com/ros/roslisp/issues/35>`_ from gaya-/symbols-for-make-msg
  Support for symbols in msg-type of make-message.
  Fully backwards compatible, no API breakage.
* Merge pull request `#39 <https://github.com/ros/roslisp/issues/39>`_ from Bradford-Miller/fix-loop-at-most
  Fix bug in LOOP-AT-MOST-EVERY:
  if the BODY takes too long the timer doesn't reset which results in BODY being called more frequently than at-most-every D.
* this time for sure
* fix issue `#38 <https://github.com/ros/roslisp/issues/38>`_
* Merge pull request `#37 <https://github.com/ros/roslisp/issues/37>`_ from mikepurvis/patch-1
  Fix changelog underline.
* Fix changelog underline.
* added support for nested message fields in MAKE-REQUEST:
  previously nested field specification was only supported when making a request using a string as message type.
  Now the same is also supported when specifying service type with a symbol.
* MAKE-MESSAGE now accepts MSG-TYPE not only of type STRING but also SYMBOL
* added a check on node name when creating a node
* minor fix for a (probably not working anyway) script
* Contributors: Gayane Kazhoyan, Georg Bartels, Mike Purvis, Bradford W. Miller (GE Global Research)

1.9.20 (2016-04-14)
-------------------
* Merge pull request `#28 <https://github.com/ros/roslisp/issues/28>`_ from gaya-/master
  In ADD_LISP_EXECUTABLE added a check for slashes in first argument
* in cmake script minor nicification
* [cmake] in ADD_LISP_EXECUTABLE added a check for slashes in first argument
* Contributors: Gayane Kazhoyan, Georg Bartels

1.9.19 (2015-08-14)
-------------------
* Merge pull request `#25 <https://github.com/ros/roslisp/issues/25>`_ from airballking/symbol-codes
  roslisp-msg-protocol: looking up symbols from constants
* Followed Gaya's suggestion of throwing an error if no symbol-code with the requested code can be found in (code-symbol ...).
* Merge pull request `#26 <https://github.com/ros/roslisp/issues/26>`_ from gaya-/deprecated-quit
  Replaced deprecated SB-EXT:QUIT with SB-EXT:EXIT
* Merge pull request `#19 <https://github.com/ros/roslisp/issues/19>`_ from gaya-/master
  Fixed the outdated executables generation pipeline
* Replaced deprecated SB-EXT:QUIT with SB-EXT:EXIT
* Contributors: Dirk Thomas, Gayane Kazhoyan, Georg Bartels

1.9.17 (2014-10-02)
-------------------
* Merge pull request `#20 <https://github.com/ros/roslisp/issues/20>`_ from daewok/use_sim_time
  use_sim_time parameter should be absolute.
* Merge pull request `#18 <https://github.com/ros/roslisp/issues/18>`_ from airballking/fix-issue17
  fix for ASDF3 compatibility
* Merge pull request `#16 <https://github.com/ros/roslisp/issues/16>`_ from jannikb/master
  Fixed Issue `ros/roslisp#12 <https://github.com/ros/roslisp/issues/12>`_
* Merge pull request `#15 <https://github.com/ros/roslisp/issues/15>`_ from jannikb/master
  Start fixing issue `ros/roslisp#12 <https://github.com/ros/roslisp/issues/12>`_
* Contributors: Eric Timmons, Georg Bartels, Jannik Buckelo, Lorenz Mösenlechner

1.9.16 (2014-04-22)
-------------------
* Added Georg Bartels as maintainer in package.xml.
* Bug-fix: Export SERVICE-CALL-ERROR symbol.
* Bug-fix: Don't throw END-OF-FILE condition in TCPROS-DO-SERVICE-REQUEST.
* Bug-fix: Corrected typo 'close-persistent-service'.
* Contributors: Gayane Kazhoyan, Georg Bartels

1.9.15 (2013-12-03)
-------------------
* Bug-fix: Make sure 'asdf-paths-to-add' does not contain any 'nil' pathnames.
* Contributors: Georg Bartels

1.9.14 (2013-11-21)
-------------------
* Merge pull request (`#10 <https://github.com/ros/roslisp/issues/10>`_) from ros/relocatable
  resolve roslisp path in installspace at runtime (`#490 <https://github.com/ros/catkin/issues/490>`_)
* resolve roslisp path in installspace at runtime (`#490 <https://github.com/ros/catkin/issues/490>`_)
* Contributors: Dirk Thomas, Georg Bartels, Lorenz Moesenlechner

1.9.13 (2013-06-24)
-------------------
* Merge pull request (`#9 <https://github.com/ros/roslisp/issues/9>`_) from ros/fix_env_hook
  fix environment hook to set ROSLISP_PACKAGE_DIRECTORIES in devel space
* fix environment hook to set ROSLISP_PACKAGE_DIRECTORIES to all devel spaces
* Contributors: Dirk Thomas, Georg Bartels

1.9.12 (2013-06-18)
-------------------
* Merge pull request (`#3 <https://github.com/ros/roslisp/issues/3>`_) from airballking/master
  Convenience function create messages for publication object AND convenience service-client interface.
* added buildtool_depend catkin to package.xml
* Added a convenience function to create message for topics that uses publication to get the message type.
* Contributors: Aaron Blasdel, Georg Bartels, Lorenz Moesenlechner

1.9.11 (2012-11-28)
-------------------
* Improved wrapper script generation to not require the ROS package sbcl.
* Throw an error if *LOAD-TRUENAME* is unbound in roslisp-sbcl-init.
* Contributors: Lorenz Moesenlechner

1.9.10 (2012-11-20)
-------------------
* Removed directory `asdf` form install target.
* Don't use rospack or the asdf subdirectory to find system load-manifest.
  Instead, we use the directory of the initfile directly, assuming that
  it's always in the roslisp directory.
* Got rid of asdf subdirectory and symbolic links.
  As of asdf2, the symbolic links to asd files are not required anymore.
  They even screw up the deb build proces. Deleting them.
* Contributors: Lorenz Moesenlechner

1.9.9 (2012-11-09)
------------------
* Added find_package for catkin in CMakeLists.txt.
* Contributors: Lorenz Moesenlechner

1.9.8 (2012-10-26)
------------------
* Check for unambiguous type declaration in with-fields macro.
  If the user declares the type using OR, we cannot use it for optimizing
  the macro expansion since it is ambiguous. Fixes (`#1 <https://github.com/ros/roslisp/issues/1>`_).
* Updated dependencies in manifest.xml file.
* Updated run-dependencies in package.xml.
* Updated CMakeLists for new catkin.
* Got rid of call of catkin_stack.
* Contributors: Lorenz Moesenlechner

1.9.7 (2012-09-27)
------------------
* Change of maintainer to Lorenz Moesenlechner
* Various catkin fixes
* Contributors: Dave Hershberger, Dirk Thomas, Lorenz Moesenlechner

1.9.0 (2012-08-30)
------------------
* Begin Catkinization
* Initial development
* Contributors: Dirk Thomas, Lorenz Moesenlechner, Thibault Kruse, bhaskara, dirk-thomas, gerkey, kruset, kwc, lorenz, mkjaergaard, tfoote
