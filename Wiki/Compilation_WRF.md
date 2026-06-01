# Compilation WRF

## Présentation

Cette page décrit la compilation native de **WRF 4.5.2** sous Linux.

La compilation a été validée sur :

* Linux Mint 22 (Ubuntu 24.04)
* Intel Core i7
* 64 Go RAM
* SSD

Temps observé :

```txt
≈ 20 minutes
```

---

# Prérequis

Avant de compiler WRF, vérifier :

```bash
which gcc
which g++
which gfortran
which mpicc
which mpif90
which nc-config
which nf-config
```

Résultat attendu :

```txt
/usr/bin/gcc
/usr/bin/g++
/usr/bin/gfortran
/usr/bin/mpicc
/usr/bin/mpif90
/usr/bin/nc-config
/usr/bin/nf-config
```

---

# Structure du projet

```txt
wrf-bretagne-native-linux/
├── config/
│   ├── configure.wrf.OK
│   └── configure.wps.OK
├── install/
├── logs/
├── scripts/
├── src/
│   └── WRF/
└── run/
```

---

# Variables d'environnement

Le script utilise :

```bash
export NETCDF=/usr
export HDF5=/usr/lib/x86_64-linux-gnu/hdf5/serial
export NETCDF_classic=1
export WRF_EM_CORE=1
export WRF_NMM_CORE=0
export WRFIO_NCD_LARGE_FILE_SUPPORT=1
```

---

# Clonage des sources

```bash
cd src

git clone --recursive \
--branch v4.5.2 \
https://github.com/wrf-model/WRF.git
```

---

# Configuration WRF

Entrer dans le dossier :

```bash
cd src/WRF
```

Configuration automatique :

```bash
printf "34\n1\n" | ./configure
```

Puis application du fichier validé :

```bash
cp ../../config/configure.wrf.OK configure.wrf
```

---

# Vérification de configure.wrf

Contrôle des chemins :

```bash
grep -n "NETCDFPATH" configure.wrf
grep -n "HDF5PATH" configure.wrf
```

Résultat attendu :

```txt
NETCDFPATH = /usr
HDF5PATH   = /usr/lib/x86_64-linux-gnu/hdf5/serial
```

---

# Suppression des options LTO

Certaines distributions ajoutent :

```txt
-flto
-flto=auto
-ffat-lto-objects
```

Suppression :

```bash
sed -i \
"s/-flto=auto//g;
 s/-ffat-lto-objects//g;
 s/-flto//g" \
configure.wrf
```

---

# Compilation

Compilation complète :

```bash
./compile em_real
```

Compilation avec log :

```bash
./compile em_real \
2>&1 | tee \
../../logs/compile_wrf_native.log
```

---

# Dashboard de compilation

Suivi temps réel :

```bash
bash scripts/watch_compile_wrf_native.sh
```

Exemple :

```txt
WRF Bretagne Native Linux
Build Dashboard

Progression : 100%
```

---

# Export HTML

Installation :

```bash
sudo apt install aha
```

Export :

```bash
mkdir -p docs/build-reports

timeout 2 \
bash scripts/watch_compile_wrf_native.sh \
| aha \
> docs/build-reports/wrf_dashboard.html
```

---

# Vérification finale

Exécutables attendus :

```bash
ls -lh main/wrf.exe
ls -lh main/real.exe
ls -lh main/ndown.exe
ls -lh main/tc.exe
```

---

# Résultats observés

| Exécutable | Taille |
| ---------- | ------ |
| wrf.exe    | 53 MB  |
| real.exe   | 45 MB  |
| ndown.exe  | 45 MB  |
| tc.exe     | 44 MB  |

---

# Vérification automatique

```bash
for exe in \
main/wrf.exe \
main/real.exe \
main/ndown.exe \
main/tc.exe
do
  ls -lh "$exe"
done
```

---

# Logs

Afficher les dernières lignes :

```bash
tail -100 logs/compile_wrf_native.log
```

Recherche d'erreurs :

```bash
grep -i \
"fatal error\|undefined reference\|collect2: error" \
logs/compile_wrf_native.log
```

---

# Résultat attendu

```txt
✔ WRF compilé
✔ wrf.exe généré
✔ real.exe généré
✔ ndown.exe généré
✔ tc.exe généré
✔ NetCDF fonctionnel
✔ MPI fonctionnel
✔ Dashboard HTML généré
```

---

# Étape suivante

Une fois WRF compilé :

```txt
Compilation WPS
        ↓
Téléchargement GFS
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

Le modèle est alors prêt à produire des prévisions météorologiques locales.
