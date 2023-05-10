# Array of detected aruco markers
std_msgs/Header header

# array of detected marker's ids
int64[] marker_ids

# array of detected marker's poses (relative to camera frame)
geometry_msgs/Pose[] poses
