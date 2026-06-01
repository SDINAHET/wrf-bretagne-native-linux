#!/usr/bin/env bash
set -e

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WPS_DIR="$BASE_DIR/src/WPS"
DATA_DIR="$BASE_DIR/data/gfs"

cd "$WPS_DIR"

echo "Nettoyage anciens liens GRIB"
rm -f GRIBFILE.* FILE:* met_em.d0* geo_em.d0*

echo "Lien des fichiers GFS"
./link_grib.csh "$DATA_DIR"/gfs.*

echo "Liens GRIB créés"
