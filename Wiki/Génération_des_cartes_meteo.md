# Génération des cartes météo

## Présentation

Une fois la simulation WRF terminée, le modèle produit des fichiers :

```txt
wrfout_d01_*
```

Ces fichiers contiennent :

* température
* pression
* vent
* humidité
* précipitations
* nuages
* géopotentiel

L'objectif est de transformer ces données scientifiques en cartes météo lisibles.

---

# Workflow

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
 ↓
wrfout_d01_*
 ↓
Python
 ↓
Cartes PNG
 ↓
Frontend / Dashboard
```

---

# Structure du projet

```txt
wrf-bretagne-native-linux/
├── data/
│   └── wrfout/
├── maps/
├── scripts/
│   └── generate_maps.py
└── wrfout_d01_*
```

Création :

```bash
mkdir -p maps
```

---

# Installation Python

Créer un environnement virtuel :

```bash
python3 -m venv venv
source venv/bin/activate
```

Installer les bibliothèques :

```bash
pip install \
xarray \
netCDF4 \
numpy \
matplotlib
```

---

# Vérification des fichiers WRF

Lister les sorties :

```bash
ls -lh wrfout_d01_*
```

Exemple :

```txt
wrfout_d01_2025-06-01_00:00:00
wrfout_d01_2025-06-01_03:00:00
wrfout_d01_2025-06-01_06:00:00
```

---

# Lecture du fichier WRF

Créer :

```bash
nano scripts/test_wrf.py
```

Contenu :

```python
from pathlib import Path
import xarray as xr

files = sorted(Path(".").glob("wrfout_d01_*"))

print(files[-1])

ds = xr.open_dataset(files[-1])

print(ds)
```

Exécution :

```bash
python3 scripts/test_wrf.py
```

---

# Carte de pression

Créer :

```bash
nano scripts/generate_pressure_map.py
```

Contenu :

```python
from pathlib import Path
import xarray as xr
import matplotlib.pyplot as plt

wrf_files = sorted(Path(".").glob("wrfout_d01_*"))

file = str(wrf_files[-1])

ds = xr.open_dataset(file)

lat = ds["XLAT"].isel(Time=0)
lon = ds["XLONG"].isel(Time=0)

psfc = ds["PSFC"].isel(Time=0) / 100.0

plt.figure(figsize=(10, 8))

levels = range(980, 1045, 5)

cs = plt.contour(
    lon,
    lat,
    psfc,
    levels=levels,
    colors="black",
    linewidths=0.5
)

plt.clabel(
    cs,
    inline=True,
    fontsize=8,
    fmt="%d"
)

plt.title("Pression au sol - Bretagne")
plt.xlabel("Longitude")
plt.ylabel("Latitude")

plt.savefig(
    "maps/pression_bretagne.png",
    dpi=150
)

plt.close()
```

Exécution :

```bash
python3 scripts/generate_pressure_map.py
```

---

# Carte de température

Créer :

```bash
nano scripts/generate_temperature_map.py
```

Contenu :

```python
from pathlib import Path
import xarray as xr
import matplotlib.pyplot as plt

wrf_files = sorted(Path(".").glob("wrfout_d01_*"))

file = str(wrf_files[-1])

ds = xr.open_dataset(file)

lat = ds["XLAT"].isel(Time=0)
lon = ds["XLONG"].isel(Time=0)

temp = ds["T2"].isel(Time=0) - 273.15

plt.figure(figsize=(10, 8))

plt.contourf(
    lon,
    lat,
    temp,
    levels=20
)

plt.colorbar(label="°C")

plt.title("Température à 2 m")
plt.xlabel("Longitude")
plt.ylabel("Latitude")

plt.savefig(
    "maps/temperature_bretagne.png",
    dpi=150
)

plt.close()
```

---

# Carte des vents

Créer :

```bash
nano scripts/generate_wind_map.py
```

Contenu :

```python
from pathlib import Path
import xarray as xr
import matplotlib.pyplot as plt

wrf_files = sorted(Path(".").glob("wrfout_d01_*"))

file = str(wrf_files[-1])

ds = xr.open_dataset(file)

lat = ds["XLAT"].isel(Time=0)
lon = ds["XLONG"].isel(Time=0)

u = ds["U10"].isel(Time=0)
v = ds["V10"].isel(Time=0)

plt.figure(figsize=(10, 8))

plt.quiver(
    lon[::5, ::5],
    lat[::5, ::5],
    u[::5, ::5],
    v[::5, ::5]
)

plt.title("Vent à 10 m")

plt.savefig(
    "maps/vent_bretagne.png",
    dpi=150
)

plt.close()
```

---

# Génération automatique

Créer :

```bash
nano scripts/generate_all_maps.sh
```

Contenu :

```bash
#!/bin/bash

python3 scripts/generate_pressure_map.py
python3 scripts/generate_temperature_map.py
python3 scripts/generate_wind_map.py
```

Rendre exécutable :

```bash
chmod +x scripts/generate_all_maps.sh
```

Exécution :

```bash
bash scripts/generate_all_maps.sh
```

---

# Résultat attendu

```txt
maps/
├── pression_bretagne.png
├── temperature_bretagne.png
└── vent_bretagne.png
```

---

# Publication dans le frontend

Les cartes peuvent être :

* affichées dans une page web
* intégrées dans un dashboard météo
* envoyées dans une API REST
* stockées dans un dossier public

Exemple :

```txt
frontend/
└── assets/maps/
```

---

# Automatisation

Workflow complet :

```txt
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
        ↓
generate_all_maps.sh
        ↓
PNG météo Bretagne
```

---

# Résultat final

```txt
✔ wrfout généré
✔ Température calculée
✔ Pression calculée
✔ Vent calculé
✔ Cartes PNG générées
✔ Frontend prêt à afficher les données
```

Le projet dispose alors d'une chaîne complète allant de la donnée météo brute NOAA jusqu'à l'affichage de cartes météo exploitables dans une application web.
