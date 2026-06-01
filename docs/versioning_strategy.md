# Versioning Strategy

## Overview

The WRF Bretagne Forecast project follows an incremental development strategy.

Each version builds upon the previous one and introduces new capabilities while preserving a stable and functional baseline.

This approach allows:

* Progressive validation of features
* Easier troubleshooting
* Better project organization
* Clear technical progression
* Traceability through Git tags

---

# Development Workflow

The project evolves according to the following methodology:

```text
V1
 ↓
Copy
 ↓
V2
 ↓
Copy
 ↓
V3
 ↓
Copy
 ↓
V4
 ↓
Copy
 ↓
V5
 ↓
Copy
 ↓
V6
```

Each new version starts from the previous stable release.

---

# V1 — Brittany Forecast 9 km / 24 h

## Objective

Build the first operational weather forecasting workflow.

## Main Features

* WRF installation
* WPS installation
* Automated compilation
* NOAA GFS integration
* Automated forecast execution
* 24-hour forecast horizon
* Brittany forecast domain

## Skills Demonstrated

* Linux Administration
* Bash Scripting
* Workflow Automation
* Numerical Weather Prediction
* Scientific Software Deployment

## Status

```text
Foundation Version
```

---

# V2 — Brittany Forecast 9 km / 72 h

## Objective

Extend forecast duration from 24 hours to 72 hours.

## Changes from V1

* Forecast horizon increased to 72 hours
* Updated WRF configuration
* Updated WPS configuration
* Increased simulation duration

## Skills Demonstrated

* WRF Configuration
* Resource Management
* Long-Term Forecast Processing

## Status

```text
Extended Forecast Version
```

---

# V3 — Brittany Forecast 3 km / 24 h

## Objective

Increase forecast spatial resolution.

## Changes from V2

* Resolution reduced from 9 km to 3 km
* More detailed atmospheric representation
* Higher computational requirements

## Skills Demonstrated

* High Resolution Modeling
* Domain Configuration
* Performance Analysis

## Status

```text
High Resolution Version
```

---

# V4 — Brittany Forecast 3 km / 72 h

## Objective

Combine high resolution with longer forecast duration.

## Changes from V3

* 3 km spatial resolution
* 72-hour forecast horizon
* Larger output datasets

## Skills Demonstrated

* High Performance Computing
* OpenMPI Optimization
* Computational Resource Monitoring

## Status

```text
Optimization Version
```

---

# V5 — Full Stack Weather Platform

## Objective

Transform numerical model outputs into structured data services.

## New Components

* PostgreSQL database
* Forecast storage
* Historical forecast archive
* REST API
* Docker deployment

## Architecture

```text
WRF
 ↓
NetCDF Files
 ↓
Python Processing
 ↓
PostgreSQL
 ↓
REST API
```

## Skills Demonstrated

* Database Design
* API Development
* Docker
* Data Engineering
* Backend Development

## Status

```text
Production Version
```

---

# V6 — Interactive Weather Portal

## Objective

Provide an operational weather visualization platform.

## New Components

* Leaflet interactive map
* Forecast visualization
* J+1 to J+3 forecasts
* Weather dashboard
* GIS visualization

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

## Skills Demonstrated

* Frontend Development
* GIS Visualization
* Full Stack Development
* Data Visualization

## Status

```text
Operational Weather Platform
```

---

# Long-Term Vision

Future versions may include:

* Nested domains
* 1 km local forecasting
* Automatic weather alerts
* Ensemble forecasting
* Forecast verification system
* Cloud deployment
* Machine Learning integration

---

# Git Versioning

Each stable version should be tagged:

```bash
git tag v1.0
git tag v2.0
git tag v3.0
git tag v4.0
git tag v5.0
git tag v6.0
```

and pushed to GitHub:

```bash
git push origin --tags
```

This strategy provides a clear history of the project's evolution and demonstrates progressive acquisition of competencies in:

```text
Linux
 ↓
DevOps
 ↓
Scientific Computing
 ↓
HPC
 ↓
Data Engineering
 ↓
Backend Development
 ↓
Frontend Development
 ↓
Full Stack Architecture
```


