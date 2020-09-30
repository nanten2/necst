#!/bin/sh

sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

sudo apt-get update
sudo apt-get install curl gnupg2 lsb-release
curl http://repo.ros2.org/repos.key | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb-release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt-get update

export ROS_DISTRO=dashing # foxy

sudo apt-get install -y ros-$ROS_DISTRO-ros-base
sudo apt-get install -y python3-colcon-common-extensions
sudo apt-get install -y python-rosdep
sudo apt-get install -y python3-argcomplete
source /opt/ros/$ROS_DISTRO/setup.bash
# echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc