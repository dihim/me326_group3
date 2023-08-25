#!/bin/bash

#gnome-terminal -x roslaunch interbotix_xslocobot_moveit xslocobot_moveit.launch robot_model:=locobot_wx250s show_lidar:=true use_gazebo:=true dof:=6
# gnome-terminal -x roslaunch interbotix_xslocobot_moveit_interface xslocobot_moveit_interface.launch robot_model:=locobot_wx250s show_lidar:=true  use_fake:=true dof:=6 use_gazebo:=true #use_cpp_interface:=true
gnome-terminal -x roslaunch interbotix_xslocobot_moveit_interface xslocobot_moveit_interface.launch robot_model:=locobot_wx250s show_lidar:=true  use_fake:=false dof:=6 use_gazebo:=true #use_cpp_interface:=true
sleep 10
rosservice call /gazebo/unpause_physics

sleep 5
roslaunch me326_locobot_example spawn_cube.launch
gnome-terminal -x roslaunch me326_locobot_example gazebo_moveit_example.launch 


