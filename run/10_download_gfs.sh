#!/usr/bin/env bash
set -e

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DATA_DIR="$BASE_DIR/data/gfs"

mkdir -p "$DATA_DIR"

DATE=$(date -u +%Y%m%d)
CYCLE="00"
DOMAIN="leftlon=-6&rightlon=0&toplat=50&bottomlat=46"

echo "Téléchargement GFS pour $DATE cycle ${CYCLE}z"

for HOUR in 000 003 006 009 012 015 018 021 024
do
  FILE="gfs.t${CYCLE}z.pgrb2.0p25.f${HOUR}"
  URL="https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p25.pl?dir=%2Fgfs.${DATE}%2F${CYCLE}%2Fatmos&file=${FILE}&lev_10_m_above_ground=on&lev_2_m_above_ground=on&lev_surface=on&lev_mean_sea_level=on&var_TMP=on&var_UGRD=on&var_VGRD=on&var_PRMSL=on&var_RH=on&var_APCP=on&${DOMAIN}"

  echo "→ $FILE"
  wget -q -O "$DATA_DIR/$FILE" "$URL"
done

echo "Téléchargement GFS terminé : $DATA_DIR"
