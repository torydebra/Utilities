# ROS and install spaces notes

_NOT SURE ABOUT THIS!_

When a ros package is installed with apt (`apt install ros-VERSION-packageName`)
it is like when yoy get the source and install it with catkin_make install.
The install folder created with catkin_make install (install/lib install/share install/include) is the analogous
of the folder created when installed with apt in /opt/ros/VERSION/lib /opt/ros/VERSION/share  /opt/ros/VERSION/include 

To install these stuff, in the cmake it seems there must be written to do so.
Without the proper install, catkin_make install will not install the relative part
and neither when a pkg is download with apt install ros-VERSION-packageName.

The problem is that with catkin_make install things work anyway because executables and libs are
also in the devel folder, and nodes are launched from here and not from install when teh code is 
compiled by source and the devel folder sourced.
Instead with apt there is no devel, so install in cmake must be there, to let people install properly
the package with apt

### Folder Meaning:
So _install_ folder inside the workspace is the equivalend of _/opt/ros/melodic_.

- `share/packageName` is where launches are usually installed togheter with package.xml and the config.cmake
    ```cmake
    install(DIRECTORY launch/
      DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
      FILES_MATCHING PATTERN "*.launch"
    )
    ```
    There are also other stuff that do not go in other folders, like other configs files and xml  
    (es from franka_control package):
    ```cmake
    install(DIRECTORY config
      DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
    )
    install(FILES franka_controller_plugins.xml
      DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
    )
    ```

- `include/packageName` is where `.h` are installed 
    ```cmake
    install(DIRECTORY include/${PROJECT_NAME}/
      DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
      FILES_MATCHING PATTERN "*.h"
      PATTERN ".svn" EXCLUDE
    )
    ```

- `lib/packageName` is where the __executables__ are installed, that for ROS are the nodes
    ```cmake
    # Mark executables and/or libraries for installation
    install(TARGETS node1
                    node2
                    node3
      ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
      LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
      RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
    )
    ```
    
    If the node is written in python, it seems that it must be installed in the same folder, but with different cmake command:
    ```cmake
    install(PROGRAMS
      scripts/my_python_script
      DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
    )
    ```
    but I also found this command to install, they are equivalent?
    ```cmake
    catkin_install_python(PROGRAMS
      scripts/joint_state_publisher_gui
      DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
    )
    ```
    
- `lib` (without children folder packageName) there are the libXXX.so, which are the libraries added with add_library and installed like the nodes:
    ```cmake
    add_library(franka_gripper src/franka_gripper.cpp)
    add_library(other_library src/franka_gripper.cpp)
    add_executable(node src/franka_gripper.cpp)
    install(TARGETS franka_gripper
                    other_library
                    node
      ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
      LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
      RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
    )
    ```
    in this case, `libfranka_gripper.so` and `libother_library` will be installed in `lib`, while `node` installed in `lib/packageName`
  
  so in `/opt/ros/VERSION/lib` other than all the packageNames folders installed with apt, there are also a lot of `libXXXX.so` belonging to different packages, in a mess without any subfolderings













