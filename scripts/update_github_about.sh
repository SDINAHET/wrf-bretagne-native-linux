#!/bin/bash
set -euo pipefail

REPO="SDINAHET/wrf-bretagne-native-linux"

# DESCRIPTION="Native Linux weather forecasting platform based on WRF 4.5.2 and WPS 4.5 for Brittany using NOAA GFS, MPI, NetCDF, Python visualization and automated workflows."
DESCRIPTION="Automated native Linux workflow for WRF/WPS local weather forecasting over Brittany using GFS data."

TOPICS="wrf,wps,weather-forecast,weather-model,meteorology,numerical-weather-prediction,fortran,mpi,netcdf,gfs,noaa,linux,ubuntu,bash,python,automation,scientific-computing,geospatial,cartography,devops"

echo "=== Updating GitHub repository About ==="

gh repo edit "$REPO" \
  --description "$DESCRIPTION" \
  --add-topic "$TOPICS"

echo "OK: description and topics updated."
