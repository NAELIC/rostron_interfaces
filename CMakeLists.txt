cmake_minimum_required(VERSION 3.5)
project(rostron_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

# Add interfaces
find_package(rosidl_default_generators REQUIRED)

find_package(geometry_msgs REQUIRED)
find_package(action_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/order/Order.msg"
  "msg/order/Orders.msg"
  "msg/commands/Command.msg"
  "msg/commands/Commands.msg"
  "msg/commands/Hardware.msg"
  "msg/vision/DetectionBall.msg"
  "msg/vision/DetectionRobot.msg"
  "msg/vision/DetectionFrame.msg"
  "msg/data/Ball.msg"
  "msg/data/Robot.msg"
  "msg/data/Robots.msg"
  "msg/data/Field.msg"
  "msg/gamecontroller/Referee.msg"
  "action/Behavior.action"
  "srv/AddAnnotation.srv"
  "srv/DeleteAnnotation.srv"
  DEPENDENCIES geometry_msgs action_msgs
)

ament_package()