#!/bin/bash

# Update the package list
sudo apt-get update

# Install Java 21
wget https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.deb
sudo dpkg -i jdk-23_linux-x64_bin.deb

# Install screen
sudo apt-get install -y screen


# Install git
sudo apt-get install -y git

# Install git
sudo apt-get install -y wget

# Install htop
sudo apt-get install -y htop

# Install ufw (Uncomplicated Firewall)
sudo apt-get install -y ufw

# Allow necessary ports
sudo ufw allow 22
sudo ufw allow 25565
sudo ufw allow 25566

# Install MySQL
sudo apt-get update -y
sudo apt install mariadb-server
sudo mysql_secure_installation


# Optional: Start and enable MySQL service
sudo systemctl start mysql
sudo systemctl enable mysql

# Enable ufw
sudo ufw enable


echo "  "
echo "  "
echo "  "
echo "  "
echo "Java Version"
java -version
echo "  "
echo "  "
echo "  "
echo "Maria DB / MySQL DB Status"
sudo systemctl status mariadb
echo "  "
echo "  "
echo "  "
sudo mysqladmin version
echo "  "
echo "  "
echo "  "

echo " _______  __    _  _______  __    _      ___  ___  __   __       __    _  _______  _______  _     _  _______  ______    ___   _  "
echo "|       ||  |  | ||       ||  |  | |    |   ||   ||  | |  |     |  |  | ||       ||       || | _ | ||       ||    _ |  |   | | | "
echo "|  _____||   |_| ||    ___||   |_| |    |   ||   ||  |_|  |     |   |_| ||    ___||_     _|| || || ||   _   ||   | ||  |   |_| | "
echo "| |_____ |       ||   |___ |       |    |   ||   ||       |     |       ||   |___   |   |  |       ||  | |  ||   |_||_ |      _| "
echo "|_____  ||  _    ||    ___||  _    | ___|   ||   ||       |     |  _    ||    ___|  |   |  |       ||  |_|  ||    __  ||     |_  "
echo " _____| || | |   ||   |___ | | |   ||       ||   ||   _   |     | | |   ||   |___   |   |  |   _   ||       ||   |  | ||    _  | "
echo "|_______||_|  |__||_______||_|  |__||_______||___||__| |__|     |_|  |__||_______|  |___|  |__| |__||_______||___|  |_||___| |_| "

echo "Installation abgeschlossen!"

echo "Nutze den folgenden Behfel um die Ports in der Firewall freizuschalten"
echo "Ersetze <port> durch den port den du freischalten möchtest"
echo " "
echo "ufw allow <port>"
