#!/bin/bash
set -euo pipefail

BASE="$HOME/Documents/meteo/wrf-bretagne-native-linux"
SRC="$BASE/src"
CONFIG="$BASE/config"
LOGS="$BASE/logs"

mkdir -p "$SRC" "$LOGS"

if [ ! -f "$CONFIG/configure.wrf.OK" ]; then
  echo "ERREUR : fichier manquant : $CONFIG/configure.wrf.OK"
  exit 1
fi

if [ ! -f "$CONFIG/configure.wps.OK" ]; then
  echo "ERREUR : fichier manquant : $CONFIG/configure.wps.OK"
  exit 1
fi

echo "=== Installation dépendances Ubuntu native ==="

sudo apt update
sudo apt install -y \
build-essential gfortran gcc g++ make m4 csh perl git wget curl unzip ca-certificates time \
mpich libmpich-dev \
libnetcdf-dev libnetcdff-dev netcdf-bin \
libhdf5-dev libpng-dev zlib1g-dev libjpeg-dev

echo "=== Installation Jasper 1.900.1 ==="

if [ ! -d /usr/local/jasper ]; then
  cd /tmp
  rm -rf jasper-1.900.1 jasper.zip
  wget -O jasper.zip https://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip
  unzip -q jasper.zip
  cd jasper-1.900.1
  ./configure --prefix=/usr/local/jasper
  make -j"$(nproc)"
  sudo make install
fi

echo "=== Préparation dossiers sources ==="

cd "$SRC"

if [ -d WRF ]; then
  mv WRF "WRF_old_$(date +%Y%m%d_%H%M%S)"
fi

if [ -d WPS ]; then
  mv WPS "WPS_old_$(date +%Y%m%d_%H%M%S)"
fi

echo "=== Clone WRF 4.5.2 ==="

git clone --recursive --branch v4.5.2 https://github.com/wrf-model/WRF.git WRF
cd WRF

export NETCDF=/usr
export HDF5=/usr/lib/x86_64-linux-gnu/hdf5/serial
export NETCDF_classic=1
export WRF_EM_CORE=1
export WRF_NMM_CORE=0
export WRFIO_NCD_LARGE_FILE_SUPPORT=1
unset J || true

echo "=== Configure WRF automatique : option 34 + nesting 1 ==="

printf "34\n1\n" | ./configure

echo "=== Application configure.wrf.OK validé ==="

cp "$CONFIG/configure.wrf.OK" configure.wrf

echo "=== Correction chemins natifs Linux dans configure.wrf ==="

sed -i "s|^NETCDFPATH.*|NETCDFPATH      =    /usr|" configure.wrf
sed -i "s|^HDF5PATH.*|HDF5PATH        =    /usr/lib/x86_64-linux-gnu/hdf5/serial|" configure.wrf
sed -i "s|-flto=auto||g; s|-ffat-lto-objects||g; s|-flto||g" configure.wrf

echo "=== Vérification configure.wrf ==="

grep -n "LIB_EXTERNAL\|NETCDFPATH\|HDF5PATH\|DM_FC\|FCBASEOPTS_NO_G\|flto" configure.wrf || true

echo "=== Compilation WRF ==="

./compile em_real 2>&1 | tee "$LOGS/compile_wrf_native.log"

echo "=== Validation WRF ==="

missing=0
for exe in main/wrf.exe main/real.exe main/ndown.exe main/tc.exe; do
  if [ ! -s "$exe" ]; then
    echo "ERREUR : $exe manquant ou vide"
    missing=1
  else
    ls -lh "$exe"
  fi
done

if [ "$missing" -ne 0 ]; then
  echo "=== Erreurs WRF détectées ==="
  grep -i "fatal error\|undefined reference\|collect2: error\|error:" "$LOGS/compile_wrf_native.log" | tail -80 || true
  exit 10
fi

echo "=== Clone WPS 4.5 ==="

cd "$SRC"
git clone --branch v4.5 https://github.com/wrf-model/WPS.git WPS
cd WPS

export WRF_DIR="$SRC/WRF"
export NETCDF=/usr
export JASPERLIB=/usr/local/jasper/lib
export JASPERINC=/usr/local/jasper/include

echo "=== Configure WPS automatique : option 3 ==="

printf "3\n" | ./configure

echo "=== Application configure.wps.OK validé ==="

cp "$CONFIG/configure.wps.OK" configure.wps

echo "=== Correction chemins natifs Linux dans configure.wps ==="

sed -i "s|^WRF_DIR.*|WRF_DIR = $SRC/WRF|" configure.wps
sed -i "s|^COMPRESSION_LIBS.*|COMPRESSION_LIBS    = -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz|" configure.wps
sed -i "s|^COMPRESSION_INC.*|COMPRESSION_INC     = -I/usr/local/jasper/include -I/usr/include|" configure.wps
sed -i "s|-L\$(NETCDF)/lib  -lnetcdf|-L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf|g" configure.wps
sed -i "s|-L/usr/lib  -lnetcdf|-L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf|g" configure.wps

echo "=== Vérification configure.wps ==="

grep -n "WRF_DIR\|COMPRESSION_LIBS\|COMPRESSION_INC\|WRF_LIB\|netcdff\|jasper" configure.wps || true

echo "=== Compilation WPS ==="

./compile 2>&1 | tee "$LOGS/compile_wps_native.log"

echo "=== Validation WPS ==="

missing=0
for exe in geogrid.exe ungrib.exe metgrid.exe; do
  if [ ! -s "$exe" ]; then
    echo "ERREUR : $exe manquant ou vide"
    missing=1
  else
    ls -lh "$exe"
  fi
done

if [ "$missing" -ne 0 ]; then
  echo "=== Erreurs WPS détectées ==="
  grep -i "fatal error\|undefined reference\|collect2: error\|error:" "$LOGS/compile_wps_native.log" | tail -80 || true
  exit 20
fi

echo "============================================================"
echo "OK : WRF + WPS compilés en natif Linux."
echo "WRF : $SRC/WRF"
echo "WPS : $SRC/WPS"
echo "Logs : $LOGS"
echo "============================================================"