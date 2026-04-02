# UGREEN Syncthing Reporter

UGREEN Syncthing Reporter ist ein leichtgewichtiges Docker-Paket für Syncthing, das einen täglichen HTML-Bericht per Mail oder Apprise versendet.

Der Reporter unterstützt Deutsch und Englisch in einem Paket und ist besonders für UGREEN NAS / UGOS geeignet, funktioniert grundsätzlich aber auch auf anderen Docker-Hosts.

## Features

- Täglicher Syncthing-Bericht per HTML-Mail oder Apprise
- DE/EN Unterstützung über `REPORT_LANG=de|en`
- Ordnerstatus, API-Fehler und fehlgeschlagene Elemente
- Änderungen der letzten X Stunden (`WINDOW_HOURS`)
- Größenauflösung und Cache für Dateigrößen
- Outlook-freundliches HTML-Layout
- Docker-Setup mit separatem Reporter-Container

## Projektstruktur

```text
UGREEN-Syncthing-Reporter/
├─ README.md
├─ .gitignore
├─ UGREEN_Syncthing_Reporter_Handbuch_DE-EN.pdf
└─ syncthing/
   ├─ .env.example
   ├─ docker-compose.yaml
   ├─ syncthing/
   │  └─ config/
   │     └─ PLACEHOLDER.txt
   └─ syncthing_reporter_py/
      ├─ Dockerfile
      ├─ entry.sh
      ├─ report.py
      ├─ requirements.txt
      └─ scheduler.sh
```

## Quickstart

1. Paket auf dein NAS oder deinen Docker-Host kopieren.
2. `syncthing/.env.example` nach `syncthing/.env` kopieren.
3. Werte in `.env` anpassen.
4. Optional eigene Syncthing-Datenpfade in `docker-compose.yaml` ergänzen.
5. Stack starten:

```bash
cd syncthing
docker compose up -d --build
```

## Wichtige Hinweise

- Die Beispielkonfiguration liegt absichtlich als `.env.example` im Repository. Bitte keine echte `.env` mit Zugangsdaten committen.
- Laufzeitdaten unter `syncthing/syncthing_reporter_py/state/` sind nicht für Git gedacht und werden über `.gitignore` ausgeschlossen.
- Die Compose-Datei nutzt aktuell `syncthing/syncthing:latest`. Für reproduzierbare Deployments kann später ein fester Tag sinnvoll sein.

## Dokumentation

- Handbuch (PDF): `UGREEN_Syncthing_Reporter_Handbuch_DE-EN.pdf`

## Version

- Reporter: V2
- Build-Stand im Paket: 2026-03-17.1

## English note

This repository contains a bilingual DE/EN Syncthing reporting package for Docker. The main documentation is included as PDF and the runtime language can be switched with `REPORT_LANG=de` or `REPORT_LANG=en`.
