## Stratégie d'Évolution des Versions

### V1 devient la base stable

Une fois la première version fonctionnelle et validée, elle devient la référence du projet.

```text
v1_bretagne_9km_24h/
├── run/
├── data/
├── output/
└── config/
```

Cette version est considérée comme :

```text
Version validée
Tag Git : v1.0
```

L'objectif est de conserver une version opérationnelle à tout moment afin de pouvoir revenir à un état stable du projet.

---

## Création de la V2

La V2 est créée à partir de la V1.

```bash
cp -r v1_bretagne_9km_24h v2_bretagne_9km_72h
```

### Modifications apportées

#### namelist.wps

Passage d'une prévision :

```text
24 h
```

à :

```text
72 h
```

#### namelist.input

Modification de :

```text
run_days = 1
```

vers :

```text
run_days = 3
```

### Objectif

Étendre l'horizon de prévision jusqu'à J+3.

---

## Création de la V3

La V3 est créée à partir de la V2.

```bash
cp -r v2_bretagne_9km_72h v3_bretagne_3km_24h
```

### Modifications apportées

Passage d'une résolution :

```text
dx = 9000
dy = 9000
```

à :

```text
dx = 3000
dy = 3000
```

### Objectif

Améliorer la précision spatiale des prévisions grâce à une résolution de 3 km.

---

## Création de la V4

La V4 est créée à partir de la V3.

```bash
cp -r v3_bretagne_3km_24h v4_bretagne_3km_72h
```

### Modifications apportées

Combinaison de :

```text
Résolution : 3 km
Prévision : 72 h
```

### Objectif

Produire des prévisions régionales haute résolution jusqu'à J+3.

---

## Création de la V5

La V5 est créée à partir de la V4.

### Nouveaux composants

* PostgreSQL
* FastAPI
* Docker

### Nouveau workflow

```text
WRF
 ↓
NetCDF
 ↓
Python
 ↓
PostgreSQL
 ↓
API REST
```

### Objectif

Transformer les résultats bruts du modèle en données exploitables via une API.

---

## Création de la V6

La V6 est créée à partir de la V5.

### Nouveaux composants

* Leaflet
* Dashboard Web
* Cartes météo interactives
* Prévisions J+1 à J+3

### Nouveau workflow

```text
NOAA GFS
 ↓
WRF
 ↓
PostgreSQL
 ↓
API REST
 ↓
Leaflet
```

### Objectif

Créer une véritable plateforme de prévision météorologique accessible via une interface web.

---

## Gestion des versions Git

Lorsque chaque version est validée, un tag Git est créé.

### Validation de la V1

```bash
git tag v1.0
git push origin v1.0
```

### Validation de la V2

```bash
git tag v2.0
git push origin v2.0
```

### Validation de la V3

```bash
git tag v3.0
git push origin v3.0
```

### Validation de la V4

```bash
git tag v4.0
git push origin v4.0
```

### Validation de la V5

```bash
git tag v5.0
git push origin v5.0
```

### Validation de la V6

```bash
git tag v6.0
git push origin v6.0
```

---

## Progression du projet

```text
v1.0 → Prévision Bretagne 9 km / 24 h

v2.0 → Prévision Bretagne 9 km / 72 h

v3.0 → Prévision Bretagne 3 km / 24 h

v4.0 → Prévision Bretagne 3 km / 72 h

v5.0 → PostgreSQL + API REST

v6.0 → Plateforme météo interactive Leaflet
```

---

## Progression des compétences

```text
Linux
 ↓
Automatisation Bash
 ↓
WRF / WPS
 ↓
Calcul scientifique
 ↓
HPC
 ↓
Python
 ↓
PostgreSQL
 ↓
API REST
 ↓
Docker
 ↓
Leaflet
 ↓
Plateforme Full Stack
```

Cette approche permet de construire progressivement une plateforme météorologique complète tout en conservant une traçabilité claire des évolutions du projet.
