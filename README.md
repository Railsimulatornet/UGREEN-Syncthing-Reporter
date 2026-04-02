# UGREEN Syncthing Reporter

Der UGREEN Syncthing Reporter ist ein leichtgewichtiges Docker-Paket fÃ¼r Syncthing, das einen tÃ¤glichen HTML-Bericht per E-Mail oder Ã¼ber Apprise versenden kann.

Das Paket unterstÃ¼tzt Deutsch und Englisch in einem Projekt und ist besonders fÃ¼r UGREEN NAS mit UGOS geeignet, funktioniert aber grundsÃ¤tzlich auch auf anderen Docker-Hosts.

## Features

- TÃ¤glicher HTML-Bericht fÃ¼r Syncthing
- Versand per E-Mail oder Apprise
- Deutsch und Englisch Ã¼ber `REPORT_LANG=de` oder `REPORT_LANG=en`
- Ãœbersicht zu Ordnerstatus, API-Fehlern und fehlgeschlagenen Elementen
- Auswertung der Ã„nderungen der letzten X Stunden Ã¼ber `WINDOW_HOURS`
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
â”œâ”€ README.md
â”œâ”€ LICENSE
â”œâ”€ .gitignore
â”œâ”€ UGREEN_Syncthing_Reporter_Handbuch_DE-EN.pdf
â”œâ”€ Screens/
â”‚  â”œâ”€ DE_Mail.jpg
â”‚  â””â”€ DE_MailMobil.jpg
â””â”€ syncthing/
   â”œâ”€ .env.example
   â”œâ”€ docker-compose.yaml
   â”œâ”€ syncthing/
   â”‚  â””â”€ config/
   â”‚     â””â”€ PLACEHOLDER.txt
   â””â”€ syncthing_reporter_py/
      â”œâ”€ Dockerfile
      â”œâ”€ entry.sh
      â”œâ”€ report.py
      â”œâ”€ requirements.txt
      â””â”€ scheduler.sh
```

## Quickstart

1. Kopiere das Paket auf dein NAS oder deinen Docker-Host.
2. Kopiere `syncthing/.env.example` nach `syncthing/.env`.
3. Passe die Werte in `.env` an deine Umgebung an.
4. ErgÃ¤nze bei Bedarf eigene Syncthing-Datenpfade in `docker-compose.yaml`.
5. Starte den Stack:

```bash
cd syncthing
docker compose up -d --build
```

## Lizenz und Nutzung

Dieses Projekt steht unter der **PolyForm Noncommercial License 1.0.0**.

- Nichtkommerzielle Nutzung ist erlaubt
- Kommerzielle Nutzung ist nicht erlaubt
- FÃ¼r kommerzielle Nutzung ist vorab eine schriftliche Genehmigung des Autors erforderlich

Bei Interesse an einer kommerziellen Nutzung kontaktiere mich bitte vorab.

## Wichtige Hinweise

- Kopiere vor dem Start `syncthing/.env.example` nach `syncthing/.env` und passe die Konfiguration an
- Bitte verÃ¶ffentliche keine echten Zugangsdaten oder produktiven `.env` Dateien
- WÃ¤hrend des Betriebs erzeugt der Reporter lokale Status- und Arbeitsdateien. Diese sind nur fÃ¼r den laufenden Betrieb gedacht und gehÃ¶ren nicht ins Repository
- Die Compose-Datei verwendet aktuell `syncthing/syncthing:latest`. Wer lieber mit festen Versionen arbeitet, kann das Image spÃ¤ter auf einen bestimmten Tag umstellen

## Dokumentation

- Das ausfÃ¼hrliche Handbuch liegt als PDF im Repository: `UGREEN_Syncthing_Reporter_Handbuch_DE-EN.pdf`

## Version

- Reporter-Version: V2.0
- Build-Stand im Paket: 2026-03-17.1

## English note

This project is licensed under the **PolyForm Noncommercial License 1.0.0**.

- Noncommercial use is allowed
- Commercial use is not allowed
- Commercial use requires prior written permission from the author

This repository contains a bilingual German and English Syncthing reporting package for Docker.
The main manual is included as a PDF in the repository, and the runtime language can be switched with `REPORT_LANG=de` or `REPORT_LANG=en`.
