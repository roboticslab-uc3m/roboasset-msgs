cmake_minimum_required(VERSION 3.5)
project(roboasset_msgs)

# find dependencies
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  # Messages
  "msg/AnglesDetection.msg"
  "msg/ArucoMarkers.msg"
  "msg/BezierControlPoints.msg"
  "msg/BezierSpline.msg"
  "msg/CollisionPoint.msg"
  "msg/DelsysEMG.msg"
  "msg/DelsysIMU.msg"
  "msg/IiwaMoveitJoints.msg"
  "msg/IiwaUnity.msg"
  "msg/Landmarks.msg"
  "msg/MindroveEmg.msg"
  "msg/PoseDetection.msg"
  "msg/PosRot.msg"
  "msg/TrafficLight.msg"
  "msg/UnityColor.msg"
  "msg/VectorLandmarks.msg"

  # Services
  "srv/BezierFitting.srv"
  "srv/BezierSampling.srv"
  "srv/ControlModeService.srv"
  "srv/ObjectPoseService.srv"
  "srv/PositionService.srv"
  "srv/RecordTopic.srv"

  # Action-Server
  "action/Pose.action"
  "action/RecordTopic.action"

  DEPENDENCIES builtin_interfaces geometry_msgs std_msgs nav_msgs
 )




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

ament_package()
