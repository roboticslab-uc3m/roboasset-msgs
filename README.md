# ROS2 example

This example contains an interactive simulation of the IIWA robot connected to ros2.

## Setup

The first step is building the cobot-py image.

Build the docker image on top of the iiwa-fri-base image:

```bash
docker-compose build ros2-dev
```

Allow GUI access to the docker:

```bash
xhost +local:docker
```

## Publish pose and show in terminal

### Publish the poses

Run an interactive terminal in the ros2 docker with:

```bash
docker run -e "TERM=xterm-256color" -e DISPLAY=$DISPLAY --network host -it --rm iiwa-fri-ros2:latest /bin/bash
```

Once inside the container build the ros2 packages and set up the environment:

```bash
colcon build && source install/setup.bash
```

Launch the simulated robot with the publisher node:

```bash
ros2 run iiwa_ros2_publisher pose_publisher
```

### Show the messages

Open another terminal (in the host pc), and use ros2 topic to show the published poses:

```bash
ros2 topic echo iiwa_joints --ros-args -p ROS_IP:=172.17.0.1
```
