# Message to control the robot in a virtual environment
# the robot whill the use the information to simulate real
# collision between the robot and the virtual environment

# Whether or not virtual object tracked to the robot's
# end effector is in collision with the virtual environment
bool is_collision

# The distance between the visual sphere representing the robots end effector
# and the dynamic sphere which collides with the virtual environment
# IMPORTANT: the direction of the penetration vector is from the virtual object
# to the robot's end effector
geometry_msgs/Vector3 penetration_vector

# The normal of the surface of the virtual object at the
# collision point
geometry_msgs/Vector3[] collision_normals
