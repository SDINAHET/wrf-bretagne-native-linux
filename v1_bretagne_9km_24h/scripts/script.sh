mkdir -p v1_bretagne_9km_24h/run
mkdir -p v1_bretagne_9km_24h/data/gfs
mkdir -p v1_bretagne_9km_24h/output/wrf
mkdir -p v1_bretagne_9km_24h/src
mkdir -p v1_bretagne_9km_24h/docs
mkdir -p v1_bretagne_9km_24h/scripts

cp run/10_download_gfs.sh v1_bretagne_9km_24h/run/
cp run/20_link_grib.sh v1_bretagne_9km_24h/run/
cp run/30_ungrib.sh v1_bretagne_9km_24h/run/
cp run/40_metgrid.sh v1_bretagne_9km_24h/run/
cp run/50_real.sh v1_bretagne_9km_24h/run/
cp run/60_wrf.sh v1_bretagne_9km_24h/run/
cp run/99_full_forecast.sh v1_bretagne_9km_24h/run/
cp run/README.md v1_bretagne_9km_24h/run/
