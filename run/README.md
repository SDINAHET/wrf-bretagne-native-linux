
# WRF/WPS Forecast Workflow

## Overview

This directory contains the operational forecasting workflow used to run a complete local weather forecast using the Weather Research and Forecasting (WRF) model and the Weather Research and Forecasting Preprocessing System (WPS).

The project already provides:

- Automated installation of WRF
- Automated installation of WPS
- Dependency management
- Automated compilation of WRF
- Automated compilation of WPS

This workflow adds the operational forecasting chain required to transform global weather data into a high-resolution local forecast over Brittany.

---

# Forecast Workflow

The complete workflow is:

```text
NOAA GFS Data
       │
       ▼
10_download_gfs.sh
       │
       ▼
20_link_grib.sh
       │
       ▼
30_ungrib.sh
       │
       ▼
40_metgrid.sh
       │
       ▼
50_real.sh
       │
       ▼
60_wrf.sh
       │
       ▼
WRF Output Files
       │
       ▼
Weather Maps and Analysis
```
---

# Understanding the Workflow

## Numerical Weather Prediction Pipeline

This project implements a complete Numerical Weather Prediction (NWP) workflow based on the Weather Research and Forecasting (WRF) model and the Weather Research and Forecasting Preprocessing System (WPS).

The forecasting chain transforms global atmospheric observations into a high-resolution regional forecast over Brittany.

```text
NOAA GFS Forecast Data
          │
          ▼
Data Acquisition
          │
          ▼
WPS Preprocessing
          │
          ▼
WRF Initialization
          │
          ▼
Numerical Simulation
          │
          ▼
Forecast Products
          │
          ▼
Weather Maps and Analysis
```

---

## Forecast Data Source

The workflow begins with the Global Forecast System (GFS), a global numerical weather prediction model operated by NOAA.

GFS provides:

* Atmospheric initial conditions
* Boundary conditions
* Global forecast fields
* Meteorological observations assimilated into the model

Without these datasets, a regional model such as WRF cannot initialize or maintain a forecast simulation.

---

## Data Preprocessing with WPS

The Weather Research and Forecasting Preprocessing System (WPS) prepares the meteorological and geographical data required by WRF.

The preprocessing workflow includes:

1. Downloading GFS forecast data
2. Linking GRIB meteorological files
3. Converting GRIB data into WPS intermediate format using `ungrib.exe`
4. Interpolating atmospheric data onto the simulation domain using `metgrid.exe`

This stage transforms global atmospheric data into a format adapted to the Brittany forecast domain.

---

## WRF Model Initialization

The `real.exe` component generates the model initialization files:

```text
wrfinput_d01
wrfbdy_d01
```

These files contain:

* Initial atmospheric state
* Boundary conditions
* Terrain-adjusted meteorological fields
* Simulation configuration parameters

This step prepares the numerical environment required for the forecast computation.

---

## Numerical Simulation with WRF

The WRF model performs the numerical integration of the atmospheric equations over time.

The model solves a set of coupled partial differential equations describing:

* Conservation of mass
* Conservation of momentum
* Conservation of energy
* Atmospheric thermodynamics
* Moisture transport
* Cloud microphysics
* Turbulence and boundary layer processes

For each simulation timestep, WRF calculates:

* Air temperature
* Atmospheric pressure
* Wind speed and direction
* Relative humidity
* Cloud cover
* Precipitation fields

---

## Computational Scale

A typical simulation domain may contain:

```text
200 × 200 grid points
```

representing:

```text
40,000 computational cells
```

For each forecast hour, the model performs millions of numerical calculations to predict the future state of the atmosphere.

The computational workload increases significantly with:

* Higher spatial resolution
* Larger domains
* Multiple nested domains
* Longer forecast horizons

---

## Forecast Outputs

The simulation generates NetCDF output files:

```text
wrfout_d01_*
```

These files contain the complete forecast dataset and can be post-processed to generate:

* Surface pressure maps
* Temperature maps
* Wind maps
* Gust maps
* Rainfall accumulation maps
* Relative humidity maps
* Forecast animations

---

## Technical and Educational Objectives

This project demonstrates practical skills in:

* Linux System Administration
* Bash Scripting
* DevOps Automation
* Scientific Computing
* Numerical Weather Prediction (NWP)
* High Performance Computing (HPC)
* Data Processing Pipelines
* Meteorological Modeling
* Open Source Software Deployment

The objective is to provide a fully automated forecasting workflow capable of producing regional weather forecasts from publicly available NOAA datasets using open-source scientific software.
...

---

# Directory Structure

```text
run/
├── README.md
├── 10_download_gfs.sh
├── 20_link_grib.sh
├── 30_ungrib.sh
├── 40_metgrid.sh
├── 50_real.sh
├── 60_wrf.sh
└── 99_full_forecast.sh
```

---

# Project Structure

```text
wrf-bretagne-native-linux/
│
├── data/
│   └── gfs/
│
├── output/
│   └── wrf/
│
├── run/
│
├── src/
│   ├── WPS/
│   └── WRF/
│
└── docs/
```

---

# Workflow Description

## Step 1 – Download Global Forecast System Data

### Script

```text
10_download_gfs.sh
```

### Purpose

Downloads meteorological forecast data from NOAA's Global Forecast System (GFS).

The downloaded data serves as the initial atmospheric conditions for the regional weather model.

### Input

```text
NOAA NOMADS Servers
```

### Output

```text
data/gfs/*.grib2
```

### Example Data

- Temperature
- Pressure
- Humidity
- Wind speed
- Wind direction
- Precipitation

---

## Step 2 – Link GRIB Files

### Script

```text
20_link_grib.sh
```

### Purpose

Creates symbolic links between downloaded GFS files and WPS.

This step prepares the data for processing by the WPS utilities.

### Tool Used

```text
link_grib.csh
```

### Input

```text
data/gfs/*.grib2
```

### Output

```text
GRIBFILE.*
```

inside:

```text
src/WPS/
```

---

## Step 3 – Run Ungrib

### Script

```text
30_ungrib.sh
```

### Purpose

Converts GRIB meteorological files into WPS intermediate format.

### Executable

```text
ungrib.exe
```

### Input

```text
GRIBFILE.*
```

### Output

```text
FILE:YYYY-MM-DD_HH
```

### Function

Extracts meteorological variables such as:

- Pressure
- Temperature
- Relative humidity
- Wind components
- Precipitation

---

## Step 4 – Run Metgrid

### Script

```text
40_metgrid.sh
```

### Purpose

Interpolates atmospheric data onto the simulation domain.

### Executable

```text
metgrid.exe
```

### Input

```text
FILE:*
geo_em.d01.nc
```

### Output

```text
met_em.d01.*
```

### Function

Combines:

- Atmospheric conditions
- Geographic data
- Terrain information
- Land use categories

to prepare the model domain.

---

## Step 5 – Run Real

### Script

```text
50_real.sh
```

### Purpose

Creates initial and boundary conditions for WRF.

### Executable

```text
real.exe
```

### Input

```text
met_em.d01.*
```

### Output

```text
wrfinput_d01
wrfbdy_d01
```

### Function

Prepares the model physics and simulation state before forecast execution.

---

## Step 6 – Run WRF

### Script

```text
60_wrf.sh
```

### Purpose

Runs the numerical weather prediction model.

### Executable

```text
wrf.exe
```

### Input

```text
wrfinput_d01
wrfbdy_d01
```

### Output

```text
wrfout_d01_*
```

### Function

Calculates:

- Temperature forecasts
- Wind forecasts
- Rainfall forecasts
- Pressure fields
- Cloud cover
- Humidity fields

---

## Step 7 – Save Results

Generated outputs are stored in:

```text
output/wrf/
```

Typical files:

```text
wrfout_d01_2026-06-01_00:00:00
wrfout_d01_2026-06-01_03:00:00
wrfout_d01_2026-06-01_06:00:00
...
```

---

# Full Automated Forecast

### Script

```text
99_full_forecast.sh
```

### Purpose

Executes the entire workflow automatically.

### Command

```bash
bash run/99_full_forecast.sh
```

### Workflow

```text
Download GFS
      ↓
Link GRIB Files
      ↓
Ungrib
      ↓
Metgrid
      ↓
Real.exe
      ↓
WRF.exe
      ↓
Forecast Outputs
```

---

# Required Software

## Core Components

- Linux (Ubuntu 22.04 or newer)
- GCC / GFortran
- OpenMPI
- NetCDF-C
- NetCDF-Fortran
- Jasper
- zlib
- libpng

## Models

- WRF
- WPS

---

# Forecast Domain

Current configuration:

```text
Region: Brittany, France
```

Approximate domain:

```text
Latitude  : 46°N → 50°N
Longitude : -6°W → 0°E
```

---

# Generated Products

The workflow ultimately produces:

- Surface pressure maps
- Temperature maps
- Wind maps
- Gust maps
- Rainfall maps
- Relative humidity maps
- Forecast animations

Future scripts may include:

```text
70_plot_pressure.py
71_plot_temperature.py
72_plot_wind.py
73_plot_rain.py
74_create_animation.py
```

---

# Typical Execution Time

Example system:

- HP EliteDesk 800 G2 SFF
- Intel Core i7
- 40 GB RAM
- Ubuntu 22.04

Estimated runtime:

| Step | Time |
|--------|--------|
| Download GFS | 1–5 min |
| Ungrib | 1–3 min |
| Metgrid | 1–3 min |
| Real | 1–2 min |
| WRF | 5–20 min |
| Total | 10–30 min |

Depending on domain size and forecast duration.

---

# Educational Objectives

This project demonstrates practical skills in:

- Linux Administration
- Shell Scripting
- DevOps Automation
- Scientific Computing
- Numerical Weather Prediction
- High Performance Computing (HPC)
- Open Source Software Deployment
- Data Processing Pipelines
- Meteorological Modeling

---

# Future Improvements

Planned developments:

- Automatic NOAA cycle detection
- Multi-domain nesting
- Docker deployment
- Forecast web dashboard
- API integration
- Automated plotting
- Scheduled forecasts via cron
- Alert generation
- Ensemble forecasting

---

# License

This workflow relies on the official WRF and WPS projects developed by:

- NCAR
- NOAA
- UCAR

and is intended for educational, research, and local forecasting purposes.

