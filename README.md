# WRF Bretagne Native Linux 22.04

Automated native Linux workflow for compiling and running **WRF/WPS** weather forecasts over Brittany using **GFS** data.

## Goal

This project provides a reproducible native Linux setup for:

- installing WRF/WPS dependencies,
- compiling WRF,
- compiling WPS,
- downloading GFS weather data,
- preparing WPS preprocessing,
- running WRF simulations,
- generating local weather outputs for Brittany.

## Architecture

```txt
wrf-bretagne-native-linux/
├── install/   # Installation and compilation scripts
├── run/       # Forecast execution scripts
├── config/    # WRF/WPS configuration templates
├── scripts/   # Python/Bash utility scripts
├── data/      # Local weather data, ignored by Git
├── logs/      # Execution logs, ignored by Git
├── src/       # WRF/WPS source folders, ignored by Git
└── docs/      # Documentation
```

La prochaine étape en linux native:

```txt
GFS NOAA
   ↓
ungrib
   ↓
metgrid
   ↓
✓ real.exe
   ↓
✓ wrf.exe
   ↓
wrfout
   ↓
Cartes météo Bretagne
```







# Project Roadmap

---

# V1 — Brittany Forecast 9 km / 24 h

## Objective

Build the first operational weather forecasting workflow.

## Features

- WRF installation
- WPS installation
- Automated compilation
- NOAA GFS integration
- Automated forecast execution
- 24-hour forecast
- Brittany domain

## Technical Skills

- Linux Administration
- Bash Scripting
- Scientific Software Installation
- Numerical Weather Prediction
- Workflow Automation

## Infrastructure

```text
HP EliteDesk 800 G2 SFF
Intel Core i7
40 GB RAM
GTX 1650
```

## Status

```text
Foundation Version
```

---

# V2 — Brittany Forecast 3 km / 72 h

## Objective

Increase forecast quality and simulation horizon.

## Features

- 3 km spatial resolution
- 72-hour forecast
- Improved domain configuration
- OpenMPI support
- Performance monitoring

## Technical Skills

- High Performance Computing (HPC)
- OpenMPI
- Performance Optimization
- Resource Management
- Scientific Computing

## Estimated Grid Size

```text
9 km  → ~40,000 grid cells

3 km  → ~300,000–400,000 grid cells
```

## Status

```text
Optimization Version
```

---

# V3 — Brittany Forecast Platform

## Objective

Transform raw model outputs into usable weather products.

## Features

- NetCDF post-processing
- Python automation
- Pressure maps
- Temperature maps
- Rainfall maps
- Wind maps
- Forecast animations

## Technical Skills

- Python
- Xarray
- Matplotlib
- Cartopy
- Scientific Visualization
- Data Processing

## Status

```text
Data Visualization Version
```

---

# V4 — Full Stack Weather Platform

## Objective

Store and expose forecast data through an API.

## Features

- PostgreSQL database
- Forecast storage
- Historical forecasts
- REST API
- Automatic forecast ingestion
- Docker deployment

## Architecture

```text
WRF
 ↓
Python Processing
 ↓
PostgreSQL
 ↓
REST API
```

## Technical Skills

- PostgreSQL
- FastAPI
- Docker
- Data Engineering
- Backend Development

## Status

```text
Production Version
```

---

# V5 — Interactive Forecast Portal

## Objective

Provide a complete weather forecasting web application.

## Features

- Interactive Leaflet map
- Forecast visualization J+1 to J+3
- Temperature layers
- Rainfall layers
- Wind layers
- Forecast dashboard
- User-friendly interface

## Architecture

```text
NOAA GFS
 ↓
WRF/WPS
 ↓
Python Processing
 ↓
PostgreSQL
 ↓
REST API
 ↓
Leaflet Frontend
```

## Technical Skills

- Leaflet
- JavaScript
- Frontend Development
- Full Stack Architecture
- GIS Visualization

## Status

```text
Operational Weather Platform
```

---

# Long-Term Vision

## V6 — Local Forecasting (1 km)

### Objective

Provide very high-resolution local weather forecasts.

### Coverage

```text
Rennes
Saint-Malo
Brocéliande
Montfort-sur-Meu
```

### Features

- Nested domains
- 1 km resolution
- Local weather alerts
- High-resolution terrain modeling

### Technical Skills

- Advanced WRF
- Nested Domains
- HPC Optimization
- Scientific Modeling

---

# Competency Progression

```text
V1 → Linux + WRF/WPS

V2 → HPC + OpenMPI

V3 → Python + Data Processing

V4 → PostgreSQL + API

V5 → Full Stack + Leaflet

V6 → Advanced WRF + HPC
```

---

# Professional Growth Path

```text
Linux Administration
        ↓
DevOps Automation
        ↓
Scientific Computing
        ↓
Data Processing
        ↓
Backend Development
        ↓
Database Engineering
        ↓
Full Stack Development
        ↓
GIS Visualization
        ↓
High Performance Computing
```

---

# Final Project Vision

```text
NOAA GFS
      ↓
WRF/WPS
      ↓
NetCDF Forecast Outputs
      ↓
Python Processing
      ↓
PostgreSQL Database
      ↓
REST API
      ↓
Leaflet Interactive Map
      ↓
Regional Weather Forecast Platform
```

The long-term objective is to build a complete end-to-end weather forecasting platform for Brittany, capable of producing high-resolution forecasts, storing meteorological data, exposing APIs, and visualizing forecasts through an interactive web interface.
