FROM ros:noetic

LABEL maintainer "Ragesh Ramachandran <ragesh.ramachandran@ipa.fraunhofer.de>"
SHELL ["/bin/bash","-c"]

RUN apt-get update && apt-get -y upgrade 

RUN apt-get install -y git \
	&& apt-get -y install python3-pip \
	&& apt-get update && apt-get -y upgrade 

ENV CATKIN_WS=/root/catkin_ws
RUN mkdir -p $CATKIN_WS/src
WORKDIR $CATKIN_WS/src

RUN git clone https://github.com/ramp-eu/THMHO_lidar_node.git

RUN	cd THMHO_lidar_node \
	&& wstool init . \
	&& wstool merge https://raw.githubusercontent.com/ramp-eu/THMHO_lidar_node/main/src/THMHO_lidar_node.rosinstall \
	&& wstool up

WORKDIR $CATKIN_WS
RUN echo "Pulling & Compiling THMHO lidar node" \
	&& source /opt/ros/noetic/setup.bash \
	&& apt-get install ros-noetic-tf2 -y && apt-get install ros-noetic-tf -y \
	&& catkin_make \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/root/run.sh"]

