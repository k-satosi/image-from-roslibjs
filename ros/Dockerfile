FROM ros:kinetic

RUN apt update && apt install -y ros-kinetic-rosbridge-suite ros-kinetic-cv-bridge ros-kinetic-image-transport

RUN mkdir -p /image_transport_ws/src
WORKDIR /image_transport_ws
RUN git clone https://github.com/ros-perception/image_common.git
RUN ln -s `pwd`/image_common/image_transport/tutorial/ ./src/image_transport_tutorial
WORKDIR /image_transport_ws/src
RUN git clone https://github.com/ros-perception/image_transport_plugins.git
WORKDIR /image_transport_ws
RUN . "/opt/ros/$ROS_DISTRO/setup.sh" && catkin_make

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

COPY ./ros_org.png /

EXPOSE 9090

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
