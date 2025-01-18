#!/bin/bash

# Update the package list
sudo apt-get update

# Install Java 21
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
sudo dpkg -i jdk-21_linux-x64_bin.deb

# Install screen
sudo apt-get install -y screen


# Install git
sudo apt-get install -y git

# Install htop
sudo apt-get install -y htop

# Install MySQL
sudo apt-get install -y mysql-server

# Optional: Start and enable MySQL service
sudo systemctl start mysql
sudo systemctl enable mysql

echo "  "
echo "Java Version"
java -version

echo "Installation abgeschlossen!"
