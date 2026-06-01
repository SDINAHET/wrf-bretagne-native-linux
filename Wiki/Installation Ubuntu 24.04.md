# Installation Ubuntu 24.04

## Présentation

Cette page décrit l'installation complète de l'environnement nécessaire à la compilation native de **WRF 4.5.2** et **WPS 4.5** sous **Ubuntu 24.04 LTS** et **Linux Mint 22**.

Cette procédure a été validée sur une machine :

* HP EliteDesk 800 G2 SFF
* Intel Core i7
* 64 Go RAM
* SSD
* Linux Mint 22 (base Ubuntu 24.04)

Le temps de compilation complet observé pour WRF + WPS est d'environ **20 minutes**.

---

# Configuration recommandée

## Minimum

| Composant    | Recommandé         |
| ------------ | ------------------ |
| CPU          | Intel i5 / Ryzen 5 |
| RAM          | 16 Go              |
| Disque libre | 50 Go              |
| OS           | Ubuntu 24.04       |

## Configuration testée

| Composant | Valeur                  |
| --------- | ----------------------- |
| Machine   | HP EliteDesk 800 G2 SFF |
| CPU       | Intel Core i7           |
| RAM       | 64 Go                   |
| Disque    | SSD                     |
| OS        | Linux Mint 22           |

---

# Mise à jour du système

Avant toute installation :

```bash
sudo apt update
sudo apt upgrade -y
```

---

# Réparation des dépôts APT

Certaines installations Ubuntu 24.04 peuvent contenir :

* anciens dépôts MongoDB 7.0
* anciennes clés Spotify
* miroirs Ubuntu inaccessibles

Suppression des dépôts obsolètes :

```bash
sudo rm -f /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo rm -f /etc/apt/sources.list.d/spotify.list
```

Nettoyage :

```bash
sudo apt clean
sudo apt update
```

---

# Installation des dépendances

## Outils de compilation

```bash
sudo apt install -y \
build-essential \
gcc \
g++ \
gfortran \
make \
m4 \
perl \
csh \
git \
wget \
curl \
unzip \
ca-certificates \
time
```

Vérification :

```bash
gcc --version
g++ --version
gfortran --version
```

---

## MPI

WRF utilise MPI pour le calcul parallèle.

```bash
sudo apt install -y \
mpich \
libmpich-dev
```

Vérification :

```bash
mpicc --version
mpif90 --version
```

---

## NetCDF

```bash
sudo apt install -y \
libnetcdf-dev \
libnetcdff-dev \
netcdf-bin
```

Vérification :

```bash
nc-config --version
nf-config --version
```

Résultat attendu :

```txt
netCDF 4.x
netCDF-Fortran 4.x
```

---

## HDF5

```bash
sudo apt install -y \
libhdf5-dev
```

Vérification :

```bash
ls /usr/lib/x86_64-linux-gnu/hdf5/serial
```

---

## Bibliothèques graphiques

```bash
sudo apt install -y \
libpng-dev \
zlib1g-dev \
libjpeg-dev
```

---

# Installation de Jasper

Certaines versions de WPS nécessitent Jasper pour les fichiers GRIB.

```bash
cd /tmp

wget -O jasper.zip \
https://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip

unzip jasper.zip

cd jasper-1.900.1

./configure --prefix=/usr/local/jasper

make -j$(nproc)

sudo make install
```

Vérification :

```bash
ls /usr/local/jasper/lib
ls /usr/local/jasper/include
```

---

# Vérification de l'environnement

## Compilateurs

```bash
which gcc
which g++
which gfortran
```

Résultat :

```txt
/usr/bin/gcc
/usr/bin/g++
/usr/bin/gfortran
```

---

## MPI

```bash
which mpicc
which mpif90
```

Résultat :

```txt
/usr/bin/mpicc
/usr/bin/mpif90
```

---

## NetCDF

```bash
which nc-config
which nf-config
```

Résultat :

```txt
/usr/bin/nc-config
/usr/bin/nf-config
```

---

# Préparation du projet

```bash
mkdir -p ~/Documents/meteo
cd ~/Documents/meteo
```

Clonage du projet :

```bash
git clone https://github.com/SDINAHET/wrf-bretagne-native-linux.git
cd wrf-bretagne-native-linux
```

---

# Structure du dépôt

```txt
wrf-bretagne-native-linux/
├── config/
├── data/
├── docs/
├── install/
├── logs/
├── run/
├── scripts/
├── src/
├── README.md
└── .gitignore
```

---

# Précheck

Avant la compilation :

```bash
bash install/00_precheck_native.sh
```

Résultat attendu :

```txt
OK dossier
OK fichier
OK Linux
OK NetCDF
OK MPI
```

---

# Compilation complète

Lancer :

```bash
bash install/99_full_install_native.sh
```

Ce script :

1. Vérifie l'environnement.
2. Installe les dépendances manquantes.
3. Installe Jasper.
4. Clone WRF 4.5.2.
5. Clone WPS 4.5.
6. Applique les configurations validées.
7. Compile WRF.
8. Compile WPS.
9. Vérifie les exécutables générés.

---

# Résultats obtenus

## WRF

Exécutables générés :

```bash
src/WRF/main/wrf.exe
src/WRF/main/real.exe
src/WRF/main/ndown.exe
src/WRF/main/tc.exe
```

Résultat observé :

| Exécutable | Taille |
| ---------- | ------ |
| wrf.exe    | 53 MB  |
| real.exe   | 45 MB  |
| ndown.exe  | 45 MB  |
| tc.exe     | 44 MB  |

---

## WPS

Exécutables générés :

```bash
src/WPS/geogrid.exe
src/WPS/ungrib.exe
src/WPS/metgrid.exe
```

Résultat observé :

| Exécutable  | Taille |
| ----------- | ------ |
| geogrid.exe | 753 KB |
| ungrib.exe  | 1.5 MB |
| metgrid.exe | 802 KB |

---

# Dashboards de compilation

Suivi WRF :

```bash
bash scripts/watch_compile_wrf_native.sh
```

Export HTML :

```bash
mkdir -p docs/build-reports

timeout 2 bash scripts/watch_compile_wrf_native.sh \
| aha > docs/build-reports/wrf_dashboard.html
```

---

Suivi WPS :

```bash
bash scripts/watch_compile_wps_native.sh
```

Export HTML :

```bash
mkdir -p docs/build-reports

timeout 2 bash scripts/watch_compile_wps_native.sh \
| aha > docs/build-reports/wps_dashboard.html
```

---

# Validation finale

Vérification WRF :

```bash
ls -lh src/WRF/main/*.exe
```

Vérification WPS :

```bash
find src/WPS -name "*.exe" -type f -exec ls -lh {} \;
```

---

# Résultat attendu

À la fin de l'installation :

```txt
✔ Ubuntu 24.04 compatible
✔ Linux Mint 22 compatible
✔ MPI fonctionnel
✔ NetCDF fonctionnel
✔ Jasper fonctionnel
✔ WRF 4.5.2 compilé
✔ WPS 4.5 compilé
✔ Dashboards HTML générés
✔ Plateforme prête pour les prévisions météo
```

---

# Étape suivante

Une fois WRF/WPS compilés :

```txt
Téléchargement GFS
        ↓
link_grib.csh
        ↓
ungrib.exe
        ↓
metgrid.exe
        ↓
real.exe
        ↓
wrf.exe
        ↓
wrfout_d01_*
        ↓
Cartes météo Bretagne
```

Le système est alors prêt pour produire des prévisions météorologiques locales sur la Bretagne.
