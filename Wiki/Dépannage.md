# Dépannage

## Présentation

Cette page regroupe les erreurs les plus fréquentes rencontrées lors de :

* l'installation de WRF
* l'installation de WPS
* la compilation native Linux
* l'utilisation de GFS
* la génération des cartes météo

---

# Vérification rapide

Avant toute recherche :

```bash
bash install/00_precheck_native.sh
```

Vérifier :

```bash
which gcc
which gfortran
which mpicc
which mpif90
which nc-config
which nf-config
```

---

# apt update échoue

## Symptôme

```txt
E: Le dépôt n'a pas de fichier Release
```

ou

```txt
NO_PUBKEY
```

## Cause

Ancien dépôt :

```txt
MongoDB 7.0
Spotify
Miroir Ubuntu inaccessible
```

## Correction

```bash
sudo rm -f /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo rm -f /etc/apt/sources.list.d/spotify.list

sudo apt clean
sudo apt update
```

---

# gfortran introuvable

## Symptôme

```txt
gfortran: command not found
```

## Correction

```bash
sudo apt install -y gfortran
```

Vérification :

```bash
gfortran --version
```

---

# mpicc ou mpif90 introuvable

## Symptôme

```txt
mpicc: command not found
```

ou

```txt
mpif90: command not found
```

## Correction

```bash
sudo apt install -y \
mpich \
libmpich-dev
```

---

# nc-config introuvable

## Symptôme

```txt
nc-config: command not found
```

## Correction

```bash
sudo apt install -y \
libnetcdf-dev \
libnetcdff-dev \
netcdf-bin
```

---

# nf-config introuvable

## Symptôme

```txt
nf-config: command not found
```

## Correction

```bash
sudo apt install -y \
libnetcdff-dev
```

---

# Jasper absent

## Symptôme

Compilation WPS impossible.

Exemple :

```txt
jasper/jasper.h: No such file or directory
```

## Vérification

```bash
ls /usr/local/jasper/include
ls /usr/local/jasper/lib
```

## Réinstallation

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

---

# WRF ne compile pas

## Vérification des logs

```bash
tail -100 logs/compile_wrf_native.log
```

Recherche :

```bash
grep -i \
"fatal error\|undefined reference\|collect2: error" \
logs/compile_wrf_native.log
```

---

# collect2: error: ld returned 1 exit status

## Symptôme

```txt
collect2: error: ld returned 1 exit status
```

## Cause

Ce n'est généralement pas l'erreur principale.

Chercher les lignes précédentes :

```bash
grep -B 20 -A 20 \
"collect2: error" \
logs/compile_wrf_native.log
```

Souvent :

```txt
NetCDF
MPI
HDF5
bibliothèque manquante
```

---

# undefined reference

## Symptôme

```txt
undefined reference to ...
```

## Cause

Bibliothèque manquante.

## Vérification

```bash
nc-config --all
nf-config --all
```

---

# WRF_DIR incorrect dans WPS

## Symptôme

```txt
cannot find WRF libraries
```

## Vérification

```bash
grep WRF_DIR configure.wps
```

Résultat attendu :

```txt
WRF_DIR=/home/.../src/WRF
```

---

# geogrid.exe absent

## Vérification

```bash
find src/WPS -name geogrid.exe
```

---

# ungrib.exe absent

## Vérification

```bash
find src/WPS -name ungrib.exe
```

---

# metgrid.exe absent

## Vérification

```bash
find src/WPS -name metgrid.exe
```

---

# link_grib.csh ne fonctionne pas

## Vérification des fichiers GFS

```bash
ls data/gfs
```

Le dossier doit contenir :

```txt
gfs.t00z.pgrb2.0p25.f000
gfs.t00z.pgrb2.0p25.f003
...
```

---

# Vtable absente

## Symptôme

```txt
ERROR: Vtable not found
```

## Correction

```bash
cd src/WPS

ln -sf \
ungrib/Variable_Tables/Vtable.GFS \
Vtable
```

---

# ungrib.exe échoue

## Vérification

```bash
ls Vtable
```

Puis :

```bash
ls GRIBFILE.*
```

---

# metgrid.exe échoue

## Vérification

```bash
ls FILE:*
```

Les fichiers doivent exister avant metgrid.

---

# real.exe échoue

## Vérification

```bash
ls met_em*
```

Les fichiers :

```txt
met_em.d01.*
```

doivent être présents.

---

# wrf.exe échoue

## Vérification

```bash
tail -100 rsl.error.0000
```

et

```bash
tail -100 rsl.out.0000
```

---

# wrfout absent

## Vérification

```bash
ls wrfout*
```

Si aucun fichier :

```txt
real.exe ou wrf.exe a échoué
```

---

# Python ne lit pas wrfout

## Symptôme

```txt
ModuleNotFoundError
```

## Installation

```bash
pip install \
xarray \
netCDF4 \
numpy \
matplotlib
```

---

# Dashboard HTML vide

## Vérification

Créer le dossier :

```bash
mkdir -p docs/build-reports
```

Puis :

```bash
timeout 2 \
bash scripts/watch_compile_wrf_native.sh \
| aha \
> docs/build-reports/wrf_dashboard.html
```

---

# Dashboard indique une erreur mais la compilation continue

Cela peut arriver.

Vérifier réellement :

```bash
ps aux | grep gfortran
```

Si des processus existent :

```txt
la compilation continue
```

---

# Vérification finale WRF

```bash
ls -lh src/WRF/main/*.exe
```

Résultat attendu :

```txt
wrf.exe
real.exe
ndown.exe
tc.exe
```

---

# Vérification finale WPS

```bash
find src/WPS -name "*.exe" -type f
```

Résultat attendu :

```txt
geogrid.exe
ungrib.exe
metgrid.exe
```

---

# Diagnostic complet

```bash
bash install/00_precheck_native.sh
```

Cette commande est la première à exécuter avant toute tentative de dépannage.

---

# Résultat attendu

```txt
✔ Linux fonctionnel
✔ GCC fonctionnel
✔ GFortran fonctionnel
✔ MPI fonctionnel
✔ NetCDF fonctionnel
✔ Jasper fonctionnel
✔ WRF compilé
✔ WPS compilé
✔ GFS téléchargé
✔ wrfout généré
✔ Cartes météo générées
```

Si tous ces points sont validés, la plateforme météo est entièrement opérationnelle.
