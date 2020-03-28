

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt-get update

sudo apt-get upgrade

sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake

sudo rosdep init

rosdep update

mkdir -p ~/ros_catkin_ws

cd ~/ros_catkin_ws

rosinstall_generator ros_comm --rosdistro kinetic --deps --wet-only --tar > kinetic-ros_comm-wet.rosinstall

wstool init src kinetic-ros_comm-wet.rosinstall

rosinstall_generator desktop --rosdistro kinetic --deps --wet-only --exclude collada_parser collada_urdf --tar > kinetic-desktop-wet.rosinstall

cd ~/ros_catkin_ws

rosdep install -y --from-paths src --ignore-src --rosdistro kinetic -r --os=debian:buster

sudo apt remove libboost1.67-dev

sudo apt autoremove

sudo apt install libboost1.58-dev libboost1.58-all-dev

sudo apt install g++-5 gcc-5

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 10

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 20

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 10

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 20

sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30

sudo update-alternatives --set cc /usr/bin/gcc

sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30

sudo update-alternatives --set c++ /usr/bin/g++

sudo rm -rf ~/ros_catkin_ws/build_isolated

sudo rm -rf ~/ros_catkin_ws/devel_isolated

cd ~/ros_catkin_ws

rosdep install -y --from-paths src --ignore-src --rosdistro kinetic -r --os=debian:buster

source /opt/ros/kinetic/setup.bash

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

mkdir -p ~/catkin_workspace/src

cd catkin_workspace/src

catkin_init_workspace

cd ~/catkin_workspace/

catkin_make

source ~/catkin_workspace/devel/setup.bash

echo “source ~/catkin_workspace/devel/setup.bash” >> ~/.bashrc
Pages 12

    Home
    (Work done somewhere in time, but still important to document)
    21 NOV 2019: BACK TO WORK! FIXING RASPBERRY PI NO IMAGE WITH HDMI TO DVI
    21 NOV 2019: INSTALLING ROS ON RASPBERRY PI ZERO W RUNNING RASPBIAN BUSTER
    22 NOV 2019: Install Golang on raspberry pi
    Google Earth Work
    Hooray!!! Something works! Firsts tests of the navigation node were successful
    IMU work!!! August 3rd 2018
    More Video Streaming research
    Speed sensor work
    Updates from May 27th, 2018. GPS work in progress!
    What you have to do if your usb ports change

Clone this wiki locally

