# Message to control the robot in a virtual environment
# the robot whill the use the information to simulate real
# collision between the robot and the virtual environment

# Whether or not virtual object tracked to the robot's
# end effector is in collision with the virtual environment
bool is_collision

# The point closest to the robot's end effector that is
# in the surface of the virtual object
geometry_msgs/Point collision_point

# The normal of the surface of the virtual object at the
# collision point
geometry_msgs/Vector3[] collision_normals
