#!/bin/sh
set -eu
: "${RUN_AT:=08:00}"
: "${PRUNE_DAYS:=14}"
: "${REPORTER_BUILD_VERSION:=2026-03-17.1}"
APP_VERSION="v2"
APP_COPYRIGHT="Copyright Roman Glos 2026"
log(){ printf "[scheduler] %s
" "$*"; }
log "syncthing_reporter_py ${APP_VERSION} | build ${REPORTER_BUILD_VERSION} | ${APP_COPYRIGHT}"
while :; do
  now=$(date +%s)
  tgt=$(date -d "today $RUN_AT" +%s)
  [ "$now" -ge "$tgt" ] && tgt=$(date -d "tomorrow $RUN_AT" +%s)
  secs=$((tgt - now))
  log "next run at $(date -d @$tgt -Iseconds) (in ${secs}s)"
  sleep "$secs"
  echo "[run] $(date -Iseconds) start"
  python -u /app/report.py || echo "[run] failed ($?)"
  find /state/attach -type f -mtime +"$PRUNE_DAYS" -delete 2>/dev/null || true
  echo "[run] done; sleeping 86400s"
  sleep 86400
done
