FROM ros:noetic

# install ros package
RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-rostopic \
      ros-${ROS_DISTRO}-ros-tutorials \
      ros-${ROS_DISTRO}-common-tutorials && \
    rm -rf /var/lib/apt/lists/*

# launch the ROS1 talker
CMD ["sh","-c","(roscore &) && rosrun roscpp_tutorials talker"]
