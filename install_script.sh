#!/bin/bash

# Update the package list
sudo apt-get update

# Install Java 21
sudo apt-get install -y openjdk-21-jdk

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

echo "Installation abgeschlossen!"
