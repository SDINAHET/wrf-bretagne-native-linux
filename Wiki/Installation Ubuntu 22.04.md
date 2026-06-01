# Installation Ubuntu 22.04

## Présentation

Cette page décrit l'installation complète de l'environnement nécessaire à la compilation native de **WRF 4.5.2** et **WPS 4.5** sous Ubuntu 22.04.

Cette procédure a été utilisée pour construire une plateforme de prévision météo locale pour la Bretagne à partir des données GFS de la NOAA.

---

# Configuration recommandée

## Configuration minimale

| Composant | Recommandé                     |
| --------- | ------------------------------ |
| CPU       | Intel i5 4 cœurs ou équivalent |
| RAM       | 16 Go                          |
| Disque    | 50 Go libres                   |
| Système   | Ubuntu 22.04 LTS               |

## Configuration utilisée

| Composant | Valeur                  |
| --------- | ----------------------- |
| Machine   | HP EliteDesk 800 G2 SFF |
| CPU       | Intel Core i7           |
| RAM       | 64 Go                   |
| SSD       | Oui                     |
| OS        | Ubuntu 22.04 LTS        |

---

# Mise à jour du système

```bash
sudo apt update
sudo apt upgrade -y
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
time
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

Exemple :

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

Certaines versions de WPS nécessitent Jasper pour la gestion de fichiers GRIB.

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

# Préparation du projet

```bash
mkdir -p ~/Documents/meteo
cd ~/Documents/meteo
```

Création du dépôt :

```bash
mkdir -p wrf-bretagne-native-linux
cd wrf-bretagne-native-linux
```

---

# Structure du projet

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

# Vérification finale

## Vérification compilateurs

```bash
which gcc
which g++
which gfortran
```

Résultat attendu :

```txt
/usr/bin/gcc
/usr/bin/g++
/usr/bin/gfortran
```

---

## Vérification MPI

```bash
which mpicc
which mpif90
```

Résultat attendu :

```txt
/usr/bin/mpicc
/usr/bin/mpif90
```

---

## Vérification NetCDF

```bash
which nc-config
which nf-config
```

Résultat attendu :

```txt
/usr/bin/nc-config
/usr/bin/nf-config
```

---

# Précheck du projet

Avant compilation :

```bash
bash install/00_precheck_native.sh
```

Le résultat doit afficher :

```txt
OK dossier
OK fichier
OK NetCDF
OK MPI
OK Linux
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
3. Clone WRF 4.5.2.
4. Clone WPS 4.5.
5. Applique les fichiers de configuration validés.
6. Compile WRF.
7. Compile WPS.
8. Vérifie les exécutables générés.

---

# Exécutables attendus

## WRF

```bash
src/WRF/main/wrf.exe
src/WRF/main/real.exe
src/WRF/main/ndown.exe
src/WRF/main/tc.exe
```

Exemple obtenu :

| Exécutable | Taille |
| ---------- | ------ |
| wrf.exe    | 53 MB  |
| real.exe   | 45 MB  |
| ndown.exe  | 45 MB  |
| tc.exe     | 44 MB  |

---

## WPS

```bash
src/WPS/geogrid.exe
src/WPS/ungrib.exe
src/WPS/metgrid.exe
```

Exemple obtenu :

| Exécutable  | Taille |
| ----------- | ------ |
| geogrid.exe | 753 KB |
| ungrib.exe  | 1.5 MB |
| metgrid.exe | 802 KB |

---

# Dashboard de compilation

Suivi WRF :

```bash
bash scripts/watch_compile_wrf_native.sh
```

Suivi WPS :

```bash
bash scripts/watch_compile_wps_native.sh
```

---

# Résultat attendu

À la fin de l'installation :

```txt
✔ WRF compilé
✔ WPS compilé
✔ MPI fonctionnel
✔ NetCDF fonctionnel
✔ Jasper fonctionnel
✔ Linux prêt pour les prévisions météo
```

La plateforme est alors prête pour l'étape suivante :

```txt
GFS
 ↓
ungrib
 ↓
metgrid
 ↓
real.exe
 ↓
wrf.exe
 ↓
wrfout
 ↓
Cartes météo Bretagne
```
