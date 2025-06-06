#!/bin/bash

# Update the package list
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install wget
sudo apt-get install curl

# Install Java 21
apt install -y wget apt-transport-https
wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor | tee /etc/apt/trusted.gpg.d/adoptium.gpg > /dev/null
sudo apt install gpg -y
echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list
sudo apt update
apt install temurin-24-jdk


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
sudo ufw allow 3306

# Install MySQL
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install mariadb-server mariadb-client -y
sudo systemctl start mariadb   # oder mysql
sudo systemctl enable mariadb  # um den Dienst beim Booten zu starten
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
