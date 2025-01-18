# Installations-Skript für Debian 11 Server

Dieses Repository enthält ein Bash-Skript, das die Installation der folgenden Programme auf einem Debian 11 Server automatisiert:

- Java 21
- Screen
- MySQL Datenbank
- Git
- htop

## Voraussetzungen

Stelle sicher, dass `curl` auf deinem Server installiert ist, um das Skript auszuführen.

## Installation

Führe den folgenden Befehl auf deinem Debian 11 Server aus, um das Installationsskript herunterzuladen und auszuführen:

```bash
sudo apt-get update -y && sudo apt-get install curl && curl -O https://raw.githubusercontent.com/Snenjih/install_script/master/install_script.sh && chmod +x install_script.sh && ./install_script.sh
