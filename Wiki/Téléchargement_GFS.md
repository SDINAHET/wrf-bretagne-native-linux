# Téléchargement GFS

## Présentation

Les données **GFS (Global Forecast System)** constituent l'entrée météorologique principale utilisée par WRF.

Le modèle GFS est produit par le **NCEP (National Centers for Environmental Prediction)** et distribué gratuitement par la NOAA.

Dans le workflow du projet :

```txt
GFS NOAA
    ↓
Téléchargement
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
Prévision météo Bretagne
```

---

# Qu'est-ce que GFS ?

Le modèle GFS fournit :

* température
* pression
* humidité
* vent
* précipitations
* géopotentiel

sur l'ensemble du globe.

Résolution courante :

```txt
0.25°
≈ 28 km
```

---

# Source officielle

Les données sont disponibles sur :

```txt
https://nomads.ncep.noaa.gov/
```

---

# Organisation du projet

Dossier conseillé :

```txt
wrf-bretagne-native-linux/
└── data/
    └── gfs/
```

Création :

```bash id="r7cq5r"
mkdir -p data/gfs
```

---

# Téléchargement manuel

Exemple :

```bash id="i7sqc2"
cd data/gfs

wget \
https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.20250601/00/atmos/gfs.t00z.pgrb2.0p25.f000
```

---

# Téléchargement automatisé

Script :

```bash id="awmb8e"
nano run/10_download_gfs.sh
```

Contenu :

```bash
#!/bin/bash

set -e

BASE="$HOME/Documents/meteo/wrf-bretagne-native-linux"
GFS_DIR="$BASE/data/gfs"

mkdir -p "$GFS_DIR"

cd "$GFS_DIR"

DATE=$(date -u +%Y%m%d)
CYCLE="00"

for HOUR in \
000 003 006 009 012 \
015 018 021 024
do

FILE="gfs.t${CYCLE}z.pgrb2.0p25.f${HOUR}"

URL="https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.${DATE}/${CYCLE}/atmos/${FILE}"

echo "Téléchargement : $FILE"

wget -c "$URL"

done
```

Rendre exécutable :

```bash id="ayt6l6"
chmod +x run/10_download_gfs.sh
```

Lancer :

```bash id="48gm1e"
bash run/10_download_gfs.sh
```

---

# Vérification

Lister les fichiers :

```bash id="q5n2j0"
ls -lh data/gfs
```

Résultat attendu :

```txt
gfs.t00z.pgrb2.0p25.f000
gfs.t00z.pgrb2.0p25.f003
gfs.t00z.pgrb2.0p25.f006
...
```

---

# Vérification GRIB

Installation :

```bash id="o5p6qj"
sudo apt install wgrib2
```

Inspection :

```bash id="uvj3jh"
wgrib2 gfs.t00z.pgrb2.0p25.f000 | head
```

Exemple :

```txt
TMP
RH
UGRD
VGRD
PRMSL
```

---

# Préparation WPS

Entrer dans WPS :

```bash id="rj0oc0"
cd src/WPS
```

Créer le lien Vtable :

```bash id="4nww8d"
ln -sf \
ungrib/Variable_Tables/Vtable.GFS \
Vtable
```

---

# Liaison des fichiers GRIB

```bash id="kr64ye"
./link_grib.csh \
../../data/gfs/*
```

Résultat :

```txt
GRIBFILE.AAA
GRIBFILE.AAB
GRIBFILE.AAC
...
```

---

# Vérification

```bash id="w0gvop"
ls -lh GRIBFILE.*
```

---

# Étape suivante : ungrib

Lancer :

```bash id="2ghw9w"
./ungrib.exe
```

Résultat attendu :

```txt
FILE:2025-06-01_00
FILE:2025-06-01_03
FILE:2025-06-01_06
...
```

---

# Étape suivante : metgrid

```bash id="c7i0sj"
./metgrid.exe
```

Résultat :

```txt
met_em.d01.*
```

---

# Vérification des sorties

```bash id="w5e5wm"
ls -lh met_em*
```

---

# Automatisation complète

Le projet prévoit :

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
```

à travers :

```bash id="v64q1q"
bash run/99_full_forecast.sh
```

---

# Dépannage

## Fichier introuvable

```txt
404 Not Found
```

Cause :

```txt
cycle GFS indisponible
```

Essayer :

```txt
00
06
12
18
```

---

## Fichier vide

Vérifier :

```bash id="sjlwmh"
ls -lh data/gfs
```

---

## link_grib.csh ne trouve rien

Vérifier :

```bash id="o4j9dc"
ls data/gfs
```

---

## ungrib.exe échoue

Vérifier :

```bash id="ggh7qe"
ls Vtable
```

Le lien doit pointer vers :

```txt
Vtable.GFS
```

---

# Résultat attendu

```txt
✔ GFS téléchargé
✔ GRIBFILE.* créé
✔ ungrib.exe exécuté
✔ FILE:* généré
✔ metgrid.exe exécuté
✔ met_em.d01.* généré
```

Les données sont alors prêtes pour :

```txt
real.exe
      ↓
wrf.exe
      ↓
wrfout_d01_*
```

qui produisent la prévision météo finale.
