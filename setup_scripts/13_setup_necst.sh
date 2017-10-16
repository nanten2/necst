#! /bin/sh

rosdep update

mkdir -p $HOME/ros/src
cd $HOME/ros/src
catkin_init_workspace
cd $HOME/ros
catkin_make

git clone https://github.com/nanten2/necst-ros.git $HOME/ros/src/necst

cd $HOME/ros
catkin_make
