# Create a new ROS workspace
mkdir -p catkin_ws/src && cd catkin_ws/src

# Download the repository
git clone https://github.com/ipa320/THMHO_lidar_node.git

# Download dependencies
cd THMHO_lidar_node
wstool init ~/catkin_ws/src/THMHO_lidar_node
wstool merge ~/catkin_ws/src/THMHO_lidar_node/THMHO_lidar_node.rosinstall 
wstool up
cd ..

# Install dependencies 
rosdep update && rosdep install --from-paths ~/catkin_ws/src --ignore-src


cd ~/catkin_ws && catkin_make
source ~/catkin_ws/devel/setup.bash

