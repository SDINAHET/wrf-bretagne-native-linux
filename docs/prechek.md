stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ bash install/00_precheck_native.sh
=== PRECHECK WRF/WPS Native Linux ===
BASE   = /home/stefdev/Documents/meteo/wrf-bretagne-native-linux
SRC    = /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src
CONFIG = /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/config
LOGS   = /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/logs

=== Vérification dossiers ===
OK dossier : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux
OK dossier : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/config
OK dossier : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src
OK dossier : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/logs

=== Vérification fichiers config ===
OK fichier : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/config/configure.wrf.OK
OK fichier : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/config/configure.wps.OK

=== Version Linux ===
Distributor ID: Linuxmint
Description:    Linux Mint 22
Release:        22
Codename:       wilma

=== CPU / RAM / disque ===
               total       utilisé      libre     partagé tamp/cache   disponible
Mem:            62Gi       5,1Gi        55Gi       151Mi       3,2Gi        57Gi
Échange:       2,0Gi          0B       2,0Gi
Sys. de fichiers Taille Utilisé Dispo Uti% Monté sur
/dev/sda5          432G     39G  371G  10% /

=== Outils système ===
OK gcc : gcc (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
OK g++ : g++ (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
MANQUANT : gfortran
OK make : GNU Make 4.3
OK git : git version 2.43.0
OK wget : GNU Wget 1.21.4 compilé sur linux-gnu.
OK curl : curl 8.5.0 (x86_64-pc-linux-gnu) libcurl/8.5.0 OpenSSL/3.0.13 zlib/1.3 brotli/1.1.0 zstd/1.5.5 libidn2/2.3.7 libpsl/0.21.2 (+libidn2/2.3.7) libssh/0.10.6/openssl/zlib nghttp2/1.59.0 librtmp/2.3 OpenLDAP/2.6.7
OK unzip : 
OK perl : 
MANQUANT : csh
MANQUANT : mpicc
MANQUANT : mpif90
MANQUANT : nc-config
MANQUANT : nf-config

=== Vérification NetCDF ===

=== Vérification Jasper ===
Jasper non installé : il sera installé par le script principal

=== Contrôle configure.wrf.OK ===
128:DESCRIPTION     =       GNU ($SFC/$SCC)
133:SFC             =       gfortran
134:SCC             =       gcc
136:DM_FC           =       gfortran
137:DM_CC           =       mpicc -cc=$(SCC)
138:FC              =       $(DM_FC)
169:CC_TOOLS        =      $(SCC) 
229:                      -I$(NETCDFPATH)/include \
239:NETCDFPATH      =    /usr
240:HDF5PATH        =    /usr/lib/x86_64-linux-gnu/hdf5/serial
243:PNETCDFPATH     =    
272:          make $(J) NETCDFPATH="$(NETCDFPATH)" RANLIB="$(RANLIB)" CPP="$(CPP)" \
273:          CC="$(SCC)" CFLAGS="$(CFLAGS)" \
274:          FC="$(SFC) $(PROMOTION) $(OMP) $(FCFLAGS)" TRADFLAG="$(TRADFLAG)" AR="$(AR)" ARFLAGS="$(ARFLAGS)" )
278:          make $(J) NETCDFPARPATH="$(NETCDFPATH)" RANLIB="$(RANLIB)" CPP="$(CPP) $(ARCHFLAGS)" \
283:          make $(J) NETCDFPATH="$(PNETCDFPATH)" RANLIB="$(RANLIB)" CPP="$(CPP) $(ARCHFLAGS)" \
293:          make $(J) CC="$(SCC)" CFLAGS="$(CFLAGS)" RM="$(RM)" RANLIB="$(RANLIB)" CPP="$(CPP)" \
294:          FC="$(SFC) $(PROMOTION) -I. $(FCDEBUG) $(FCBASEOPTS) $(FCSUFFIX)" TRADFLAG="$(TRADFLAG)" AR="$(AR)" ARFLAGS="$(ARFLAGS)" archive) 
298:          make $(J) CC="$(SCC)" CFLAGS="$(CFLAGS)" RM="$(RM)" RANLIB="$(RANLIB)" CPP="$(CPP)" \
299:          FC="$(SFC) $(PROMOTION) -I. $(FCDEBUG) $(FCBASEOPTS) $(FCSUFFIX)" TRADFLAG="$(TRADFLAG)" AR="$(AR)" ARFLAGS="$(ARFLAGS)" archive)
303:          make $(J) CC="$(SCC)" CFLAGS="$(CFLAGS) " RM="$(RM)" RANLIB="$(RANLIB)" \
305:          FC="$(SFC) $(PROMOTION) -I. $(FCDEBUG) $(FCBASEOPTS) $(FCSUFFIX)" TRADFLAG="-traditional" AR="$(AR)" ARFLAGS="$(ARFLAGS)" \
316:          make $(J) FC="$(SFC) $(PROMOTION) $(FCDEBUG) $(FCBASEOPTS)" RANLIB="$(RANLIB)" \
321:          make $(J) FC="$(SFC)" FFLAGS="$(PROMOTION) $(FCDEBUG) $(FCBASEOPTS)" RANLIB="$(RANLIB)" AR="$(AR)" \
326:          make $(J) CC="$(SCC)" CFLAGS="$(CFLAGS) " RM="$(RM)" RANLIB="$(RANLIB)" \
328:          FC="$(DM_FC) $(PROMOTION) -I. $(FCDEBUG) $(FCBASEOPTS) $(FCSUFFIX)" TRADFLAG="-traditional" AR="$(AR)" ARFLAGS="$(ARFLAGS)" \

=== Contrôle configure.wps.OK avant correction ===
35:WRF_DIR = /wrf-project/v1_bretagne_9km_24h/src/WRF
37:WRF_INCLUDE     =       -I$(WRF_DIR)/external/io_netcdf \
38:                        -I$(WRF_DIR)/external/io_grib_share \
39:                        -I$(WRF_DIR)/external/io_grib1 \
40:                        -I$(WRF_DIR)/external/io_int \
41:                        -I$(WRF_DIR)/inc \
44:WRF_LIB         =       -L$(WRF_DIR)/external/io_grib1 -lio_grib1 \
45:                        -L$(WRF_DIR)/external/io_grib_share -lio_grib_share \
46:                        -L$(WRF_DIR)/external/io_int -lwrfio_int \
47:                        -L$(WRF_DIR)/external/io_netcdf -lwrfio_nf \
48:                        -L$(NETCDF)/lib -L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf
52:COMPRESSION_LIBS    = -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz
54:COMPRESSION_INC     = -I/usr/local/jasper/include -I/usr/include
62:COMPRESSION_LIBS    = -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz
63:COMPRESSION_INC     = -I/usr/local/jasper/include -I/usr/include

=== Simulation correction WPS ===
35:WRF_DIR = /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF
37:WRF_INCLUDE     =       -I$(WRF_DIR)/external/io_netcdf \
38:                        -I$(WRF_DIR)/external/io_grib_share \
39:                        -I$(WRF_DIR)/external/io_grib1 \
40:                        -I$(WRF_DIR)/external/io_int \
41:                        -I$(WRF_DIR)/inc \
44:WRF_LIB         =       -L$(WRF_DIR)/external/io_grib1 -lio_grib1 \
45:                        -L$(WRF_DIR)/external/io_grib_share -lio_grib_share \
46:                        -L$(WRF_DIR)/external/io_int -lwrfio_int \
47:                        -L$(WRF_DIR)/external/io_netcdf -lwrfio_nf \
48:                        -L$(NETCDF)/lib -L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf
52:COMPRESSION_LIBS    = -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz
54:COMPRESSION_INC     = -I/usr/local/jasper/include -I/usr/include
62:COMPRESSION_LIBS    = -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz
63:COMPRESSION_INC     = -I/usr/local/jasper/include -I/usr/include

=== Résultat pré-test ===
OK : disposition compatible pour installation native Linux.
Tu peux lancer ensuite :
bash install/99_full_install_native.sh
stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ 