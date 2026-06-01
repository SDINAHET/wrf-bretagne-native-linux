#!/usr/bin/env bash
set -e

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WPS_DIR="$BASE_DIR/src/WPS"
WRF_RUN_DIR="$BASE_DIR/src/WRF/run"

echo "Copie des fichiers met_em vers WRF/run"
cp "$WPS_DIR"/met_em.d0* "$WRF_RUN_DIR"/

cd "$WRF_RUN_DIR"

echo "Lancement real.exe"
./real.exe

echo "real.exe terminé"
