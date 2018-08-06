#! /bin/sh

rosdep update

mkdir -p $HOME/ros/src
cd $HOME/ros/src
catkin_init_workspace
cd $HOME/ros

source $HOME/.bashrc
git clone https://github.com/nanten2/necst-ros.git $HOME/ros/src/necst
catkin_make

source $HOME/.bashrc
git clone https://github.com/nanten2/NASCORX_XFFTS.git $HOME/ros/src/nascorx_xffts
catkin_make
