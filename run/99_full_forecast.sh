#!/usr/bin/env bash
set -e

echo "======================================"
echo " WRF Bretagne - Prévision complète"
echo "======================================"

cd "$(dirname "$0")"

bash 10_download_gfs.sh
bash 20_link_grib.sh
bash 30_ungrib.sh
bash 40_metgrid.sh
bash 50_real.sh
bash 60_wrf.sh

echo "======================================"
echo " Prévision terminée"
echo " Fichiers WRF générés dans run/"
echo "======================================"
