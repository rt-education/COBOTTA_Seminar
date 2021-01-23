#!/bin/bash

sudo apt install curl git

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt update

sudo apt install ros-melodic-desktop-full

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

source /opt/ros/melodic/setup.bash

sudo rosdep init
rosdep update

wget https://raw.githubusercontent.com/rt-education/COBOTTA_Seminar/main/scripts/moveit_install.sh
