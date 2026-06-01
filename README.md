# WRF Bretagne Native Linux

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
