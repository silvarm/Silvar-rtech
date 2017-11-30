cmake_minimum_required(VERSION 2.8.3)
project(mouse_reader)

set(CMAKE_CXX_FLAGS "-std=c++11")


find_package(catkin REQUIRED COMPONENTS geometry_msgs roscpp rospy std_msgs message_generation)

add_message_files(FILES mouse.msg)
generate_messages(DEPENDENCIES std_msgs geometry_msgs)
catkin_package()

## Specify libraries to link a library or executable target against
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(mouse_read src/mouse_reader.cpp)
target_link_libraries(mouse_read ${catkin_LIBRARIES})
add_dependencies(mouse_read mouse_reader_generate_messages_cpp)
