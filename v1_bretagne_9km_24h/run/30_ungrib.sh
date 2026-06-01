#!/usr/bin/env bash
set -e

#BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
#WPS_DIR="$BASE_DIR/src/WPS"

PROJECT_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
WPS_DIR="$PROJECT_ROOT/src/WPS"

cd "$WPS_DIR"

echo "Lancement ungrib.exe"
./ungrib.exe

echo "ungrib terminé"
