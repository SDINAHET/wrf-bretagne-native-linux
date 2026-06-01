#!/usr/bin/env bash
set -e

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WPS_DIR="$BASE_DIR/src/WPS"

cd "$WPS_DIR"

echo "Lancement ungrib.exe"
./ungrib.exe

echo "ungrib terminé"
