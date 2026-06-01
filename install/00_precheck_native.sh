#!/bin/bash
set -euo pipefail

BASE="$HOME/Documents/meteo/wrf-bretagne-native-linux"
SRC="$BASE/src"
CONFIG="$BASE/config"
LOGS="$BASE/logs"

echo "=== PRECHECK WRF/WPS Native Linux ==="

echo "BASE   = $BASE"
echo "SRC    = $SRC"
echo "CONFIG = $CONFIG"
echo "LOGS   = $LOGS"

echo
echo "=== Vérification dossiers ==="

for dir in "$BASE" "$CONFIG" "$SRC" "$LOGS"; do
  if [ -d "$dir" ]; then
    echo "OK dossier : $dir"
  else
    echo "MANQUANT dossier : $dir"
  fi
done

echo
echo "=== Vérification fichiers config ==="

for file in "$CONFIG/configure.wrf.OK" "$CONFIG/configure.wps.OK"; do
  if [ -f "$file" ]; then
    echo "OK fichier : $file"
  else
    echo "ERREUR fichier manquant : $file"
    exit 1
  fi
done

echo
echo "=== Version Linux ==="
lsb_release -a 2>/dev/null || cat /etc/os-release

echo
echo "=== CPU / RAM / disque ==="
lscpu | grep "Model name" || true
free -h
df -h "$BASE"

echo
echo "=== Outils système ==="

for cmd in gcc g++ gfortran make git wget curl unzip perl csh mpicc mpif90 nc-config nf-config; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "OK $cmd : $($cmd --version 2>/dev/null | head -1 || true)"
  else
    echo "MANQUANT : $cmd"
  fi
done

echo
echo "=== Vérification NetCDF ==="
nc-config --all 2>/dev/null | grep -E "version|prefix|includedir|libdir" || true
nf-config --all 2>/dev/null | grep -E "version|prefix|includedir|libdir" || true

echo
echo "=== Vérification Jasper ==="

if [ -d /usr/local/jasper ]; then
  echo "OK Jasper : /usr/local/jasper"
else
  echo "Jasper non installé : il sera installé par le script principal"
fi

echo
echo "=== Contrôle configure.wrf.OK ==="

grep -n "NETCDFPATH\|HDF5PATH\|DM_FC\|SFC\|SCC\|flto" "$CONFIG/configure.wrf.OK" || true

echo
echo "=== Contrôle configure.wps.OK avant correction ==="

grep -n "WRF_DIR\|COMPRESSION_LIBS\|COMPRESSION_INC\|netcdff\|jasper" "$CONFIG/configure.wps.OK" || true

echo
echo "=== Simulation correction WPS ==="

TMP_WPS="/tmp/configure.wps.precheck"
cp "$CONFIG/configure.wps.OK" "$TMP_WPS"

sed -i "s|^WRF_DIR.*|WRF_DIR = $SRC/WRF|" "$TMP_WPS"
sed -i "s|^COMPRESSION_LIBS.*|COMPRESSION_LIBS    = -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz|" "$TMP_WPS"
sed -i "s|^COMPRESSION_INC.*|COMPRESSION_INC     = -I/usr/local/jasper/include -I/usr/include|" "$TMP_WPS"
sed -i "s|-L\$(NETCDF)/lib  -lnetcdf|-L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf|g" "$TMP_WPS"
sed -i "s|-L/usr/lib  -lnetcdf|-L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf|g" "$TMP_WPS"

grep -n "WRF_DIR\|COMPRESSION_LIBS\|COMPRESSION_INC\|netcdff\|jasper" "$TMP_WPS" || true

echo
echo "=== Résultat pré-test ==="
echo "OK : disposition compatible pour installation native Linux."
echo "Tu peux lancer ensuite :"
echo "bash install/99_full_install_native.sh"
