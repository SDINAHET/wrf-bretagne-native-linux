# Compilation WPS

## Présentation

Cette page décrit la compilation native de **WPS 4.5** (WRF Preprocessing System).

WPS est utilisé pour préparer les données météorologiques avant l'exécution de WRF.

Il réalise notamment :

```txt
GFS
 ↓
ungrib.exe
 ↓
metgrid.exe
 ↓
real.exe
 ↓
wrf.exe
```

La compilation a été validée sur :

* Linux Mint 22
* Ubuntu 24.04
* Intel Core i7
* 64 Go RAM
* SSD

---

# Prérequis

Avant de compiler WPS :

* WRF doit être compilé avec succès.
* Les bibliothèques NetCDF doivent être installées.
* Jasper doit être installé.

Vérification :

```bash
which nc-config
which nf-config
```

```bash
ls /usr/local/jasper/lib
ls /usr/local/jasper/include
```

---

# Vérification WRF

WPS dépend de WRF.

Vérifier :

```bash
ls -lh src/WRF/main/wrf.exe
ls -lh src/WRF/main/real.exe
```

Résultat attendu :

```txt
wrf.exe
real.exe
```

présents et non vides.

---

# Structure du projet

```txt
wrf-bretagne-native-linux/
├── config/
│   ├── configure.wrf.OK
│   └── configure.wps.OK
├── logs/
├── scripts/
├── src/
│   ├── WRF/
│   └── WPS/
└── run/
```

---

# Clonage de WPS

```bash
cd src

git clone \
--branch v4.5 \
https://github.com/wrf-model/WPS.git
```

---

# Variables d'environnement

```bash
export WRF_DIR="$HOME/Documents/meteo/wrf-bretagne-native-linux/src/WRF"

export NETCDF=/usr

export JASPERLIB=/usr/local/jasper/lib
export JASPERINC=/usr/local/jasper/include
```

---

# Configuration automatique

Entrer dans le dossier :

```bash
cd src/WPS
```

Lancer :

```bash
printf "3\n" | ./configure
```

---

# Application du configure validé

```bash
cp ../../config/configure.wps.OK configure.wps
```

---

# Correction automatique des chemins

## WRF_DIR

```bash
sed -i \
"s|^WRF_DIR.*|WRF_DIR = $WRF_DIR|" \
configure.wps
```

---

## Jasper

```bash
sed -i \
"s|^COMPRESSION_LIBS.*|COMPRESSION_LIBS = -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz|" \
configure.wps
```

```bash
sed -i \
"s|^COMPRESSION_INC.*|COMPRESSION_INC = -I/usr/local/jasper/include -I/usr/include|" \
configure.wps
```

---

## NetCDF

```bash
sed -i \
"s|-L\$(NETCDF)/lib  -lnetcdf|-L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf|g" \
configure.wps
```

---

# Vérification de configure.wps

```bash
grep -n \
"WRF_DIR\|COMPRESSION_LIBS\|COMPRESSION_INC\|netcdff\|jasper" \
configure.wps
```

Résultat attendu :

```txt
WRF_DIR
jasper
netcdff
```

présents.

---

# Compilation

Compilation complète :

```bash
./compile
```

Compilation avec journalisation :

```bash
./compile \
2>&1 | tee \
../../logs/compile_wps_native.log
```

---

# Dashboard de compilation

Suivi temps réel :

```bash
bash scripts/watch_compile_wps_native.sh
```

Exemple :

```txt
WPS Build Dashboard
Progression : 100 %
```

---

# Export HTML coloré

Installation :

```bash
sudo apt install aha
```

Création du dossier :

```bash
mkdir -p docs/build-reports
```

Export :

```bash
timeout 2 \
bash scripts/watch_compile_wps_native.sh \
| aha \
> docs/build-reports/wps_dashboard.html
```

---

# Vérification des exécutables

Selon la version WPS :

```bash
find . -name "*.exe"
```

Exemple :

```txt
geogrid.exe
ungrib.exe
metgrid.exe
```

ou

```txt
geogrid/src/geogrid.exe
ungrib/src/ungrib.exe
metgrid/src/metgrid.exe
```

---

# Résultats observés

| Exécutable  | Taille |
| ----------- | ------ |
| geogrid.exe | 753 KB |
| ungrib.exe  | 1.5 MB |
| metgrid.exe | 802 KB |

---

# Vérification automatique

```bash
find . -name "*.exe" -type f -exec ls -lh {} \;
```

---

# Logs

Afficher les dernières lignes :

```bash
tail -100 logs/compile_wps_native.log
```

Recherche d'erreurs :

```bash
grep -i \
"fatal error\|undefined reference\|collect2: error" \
logs/compile_wps_native.log
```

---

# Résultat attendu

```txt
✔ WPS compilé
✔ geogrid.exe généré
✔ ungrib.exe généré
✔ metgrid.exe généré
✔ NetCDF fonctionnel
✔ Jasper fonctionnel
✔ Dashboard HTML généré
```

---

# Rôle des exécutables

## geogrid.exe

Création de la grille géographique.

```txt
Topographie
Occupation du sol
Relief
```

---

## ungrib.exe

Lecture des données météo brutes :

```txt
GFS
ECMWF
NAM
```

---

## metgrid.exe

Interpolation des données météo sur la grille WRF.

```txt
GRIB
 ↓
MET_EM
```

---

# Étape suivante

Une fois WPS compilé :

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
```

Le système est alors prêt à produire des prévisions météo locales sur la Bretagne.
