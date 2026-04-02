# UGREEN Syncthing Reporter

Der UGREEN Syncthing Reporter ist ein leichtgewichtiges Docker-Paket für Syncthing, das einen täglichen HTML-Bericht per E-Mail oder über Apprise versenden kann.

Das Paket unterstützt Deutsch und Englisch in einem Projekt und ist besonders für UGREEN NAS mit UGOS geeignet, funktioniert aber grundsätzlich auch auf anderen Docker-Hosts.

## Features

- Täglicher HTML-Bericht für Syncthing
- Versand per E-Mail oder Apprise
- Deutsch und Englisch über `REPORT_LANG=de` oder `REPORT_LANG=en`
- Übersicht zu Ordnerstatus, API-Fehlern und fehlgeschlagenen Elementen
- Auswertung der Änderungen der letzten X Stunden über `WINDOW_HOURS`
- Outlook-freundliches HTML-Layout
- Docker-Setup mit separatem Reporter-Container

## Screenshots

### Desktop-Ansicht

<p align="center">
  <img src="Screens/DE_Mail.jpg" alt="Syncthing Bericht Desktop-Ansicht" width="1000">
</p>

### Mobile Ansicht

<p align="center">
  <img src="Screens/DE_MailMobil.jpg" alt="Syncthing Bericht Mobile Ansicht" width="420">
</p>

## Projektstruktur

```text
UGREEN-Syncthing-Reporter/
|- README.md
|- LICENSE
|- .gitignore
|- UGREEN_Syncthing_Reporter_Handbuch_DE-EN.pdf
|- Screens/
|  |- DE_Mail.jpg
|  `- DE_MailMobil.jpg
`- syncthing/
   |- .env.example
   |- docker-compose.yaml
   |- syncthing/
   |  `- config/
   |     `- PLACEHOLDER.txt
   `- syncthing_reporter_py/
      |- Dockerfile
      |- entry.sh
      |- report.py
      |- requirements.txt
      `- scheduler.sh
