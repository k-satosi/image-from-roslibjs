#!/bin/bash

source "/opt/ros/$ROS_DISTRO/setup.bash"
roslaunch rosbridge_server rosbridge_websocket.launch &

source /image_transport_ws/devel/setup.bash
rosrun image_transport_tutorial my_publisher /ros_org.png
