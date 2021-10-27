#! /bin/bash

read -p "1- Go to https://www.tp-link.com/support/download/omada-software-controller/ 
2- Copy the .deb link and paste it here :" LINK

echo "----------------------------"
echo "Starting.."
echo "----------------------------"


sudo apt-get update
sudo apt upgrade

echo "-----------------------------"
echo "Installing mongodb.."
echo "-----------------------------"
sudo apt-get install mongodb

echo "----------------------------"
echo "Installing java.."
echo "-----------------------------"
sudo apt-get install jsvc

echo "----------------------------"
echo "Installing jdk8.."
echo "-----------------------------"
sudo apt-get install openjdk-8-jdk

echo "----------------------------"
echo "Change the version of JDK (select java 8) "
echo "-----------------------------"
sudo update-alternatives --config java

echo "----------------------------"
echo " Installing gdebi...."
echo "-----------------------------"
sudo apt install gdebi-core

echo "----------------------------"
echo " Downloading omada ...."
echo "-----------------------------"
sudo wget $LINK

NAME=${LINK##*/}
echo "----------------------------"
echo " Installing omada ...."
echo "-----------------------------"
sudo -H gdebi $NAME