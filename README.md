### Installations-Skript für Debian 11 Server und wichtige Informationen / TIPS

Dieses Repository enthält ein Bash-Skript, das die Installation der folgenden Programme auf einem Debian 11 Server automatisiert:

- Java 21
- Screen
- MySQL Datenbank
- Git
- htop

## Voraussetzungen

Stelle sicher, dass `curl` auf deinem Server installiert ist, um das Skript auszuführen.

## MySQL DB / MariaDB
#Zugriff auf die MySQL-Datenbank
Um auf die MySQL-Datenbank zuzugreifen, verwende den folgenden Befehl:
```bash
mysql -u root -p
```

#Benutzer erstellen
Um einen neuen Benutzer in MySQL zu erstellen, verwende die folgenden Befehle:
```bash
CREATE USER 'neuer_benutzer'@'localhost' IDENTIFIED BY 'passwort';
```

#Datenbank erstellen
Um eine neue Datenbank zu erstellen, verwende den folgenden Befehl:
```bash
CREATE DATABASE neue_datenbank;
```

#Flush Privileges
Nachdem du Benutzer und Berechtigungen erstellt oder geändert hast, verwende FLUSH PRIVILEGES, um sicherzustellen, dass alle Änderungen wirksam werden:
```bash
FLUSH PRIVILEGES;
```

#Datenbankberechtigungen verwalten
Ersetze dabei neue_datenbank durch den name deiner Datenbank.
Ersetze neuer_benutzer durch den namen deines benutzers und localhost durch die IP deines Server´s oder belasse es bei localhost falls du nicht von außen zuzugreifen möchtest.
Um einem Benutzer Berechtigungen für eine Datenbank zu erteilen, verwende die folgenden Befehle:
```bash
GRANT ALL PRIVILEGES ON neue_datenbank.* TO 'neuer_benutzer'@'localhost';
FLUSH PRIVILEGES;
```

##UFW Firewall
#Aktivieren der UFW-Firewall
Um die UFW-Firewall zu aktivieren, verwende den folgenden Befehl:
```bash
sudo ufw enable
```

#Deaktivieren der UFW-Firewall
Um die UFW-Firewall zu deaktivieren, verwende den folgenden Befehl:
```bash
sudo ufw disable
```

#Ports zulassen
Die benutzen zahlen/ports sind nur beispiele aber es ist zu empfehelen 22 als port hinzuzufügen um ssh zu verwenden
Um spezifische Ports zuzulassen, verwende den folgenden Befehl:
```bash
sudo ufw allow 22
sudo ufw allow 25565
sudo ufw allow 25566
```

#IP-Adressen zulassen
Um eine spezifische IP-Adresse zuzulassen, verwende den folgenden Befehl:
```bash
sudo ufw allow from 192.168.1.100
```


##Wichtige Befehle
Hostname ändern
Um den Hostnamen deines Servers zu ändern, verwende den folgenden Befehl:
```bash
sudo hostname <neuer_name>
```

MOTD Datei
Die MOTD-Datei (Message of the Day) befindet sich in /etc/motd. Diese Datei wird jedes Mal angezeigt, wenn ein Benutzer sich anmeldet. Du kannst die Datei bearbeiten, um eine benutzerdefinierte Nachricht anzuzeigen:
```bash
sudo nano /etc/motd
```


## Installation des Skriptes

Führe den folgenden Befehl auf deinem Debian 11 Server aus, um den Server einmal zu aktualisieren und anschließend sudo,curl zu instalieren 

```bash
apt-get update -y && apt-get upgrade -y && apt-get install sudo -y && sudo apt-get install curl -y
```

Führe den folgenden Befehl auf deinem Debian 11 Server aus, um das Installationsskript herunterzuladen und auszuführen:

```bash
sudo apt-get update -y && sudo apt-get install curl -y && curl -O https://raw.githubusercontent.com/Snenjih/install_script/refs/heads/main/install_script.sh && chmod +x install_script.sh && ./install_script.sh
```
