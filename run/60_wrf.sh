#!/usr/bin/env bash
set -e

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WRF_RUN_DIR="$BASE_DIR/src/WRF/run"
OUTPUT_DIR="$BASE_DIR/output/wrf"

mkdir -p "$OUTPUT_DIR"

cd "$WRF_RUN_DIR"

echo "Lancement wrf.exe"
./wrf.exe

echo "Copie des sorties WRF"
cp wrfout_d0* "$OUTPUT_DIR"/

echo "WRF terminé"
echo "Sorties disponibles dans : $OUTPUT_DIR"
