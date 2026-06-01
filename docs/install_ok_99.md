eteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f input_module.o input_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include input_module.F > input_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c input_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f interp_module.o interp_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include interp_module.F > interp_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c interp_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f module_map_utils.o module_map_utils.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include module_map_utils.F > module_map_utils.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c module_map_utils.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f llxy_module.o llxy_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include llxy_module.F > llxy_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c llxy_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f module_mergesort.o module_mergesort.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include module_mergesort.F > module_mergesort.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c module_mergesort.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f minheap_module.o minheap_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include minheap_module.F > minheap_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c minheap_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f storage_module.o storage_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include storage_module.F > storage_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c storage_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f output_module.o output_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include output_module.F > output_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c output_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f met_data_module.o met_data_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include met_data_module.F > met_data_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c met_data_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f read_met_module.o read_met_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include read_met_module.F > read_met_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c read_met_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f rotate_winds_module.o rotate_winds_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include rotate_winds_module.F > rotate_winds_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c rotate_winds_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f scan_input.o scan_input.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include scan_input.F > scan_input.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c scan_input.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f mpas_mesh.o mpas_mesh.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include mpas_mesh.F > mpas_mesh.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c mpas_mesh.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f target_mesh.o target_mesh.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include target_mesh.F > target_mesh.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c target_mesh.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f remapper.o remapper.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include remapper.F > remapper.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c remapper.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f process_domain_module.o process_domain_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include process_domain_module.F > process_domain_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c process_domain_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f metgrid.o metgrid.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include metgrid.F > metgrid.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c metgrid.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f write_met_module.o write_met_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_METGRID -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include write_met_module.F > write_met_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c write_met_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
mpif90   -o metgrid.exe cio.o wrf_debug.o bitarray_module.o constants_module.o datatype_module.o module_stringutil.o gridinfo_module.o metgrid.o input_module.o interp_module.o interp_option_module.o list_module.o llxy_module.o met_data_module.o minheap_module.o misc_definitions_module.o module_date_pack.o module_debug.o module_map_utils.o module_mergesort.o output_module.o parallel_module.o process_domain_module.o queue_module.o read_met_module.o rotate_winds_module.o storage_module.o write_met_module.o scan_input.o mpas_mesh.o target_mesh.o remapper.o \
                /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/frame/module_driver_constants.o \
        /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/frame/pack_utils.o /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/frame/module_machine.o \
        /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/frame/module_internal_header_util.o \
                -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include \
                -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -lio_grib1 -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -lio_grib_share -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -lwrfio_int -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -lwrfio_nf -L/usr/lib -L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf \
                
parallel_module.f90:520:81: warning: type of ‘mpi_send’ does not match original declaration [-Wlto-type-mismatch]
  520 |                              processors(my_x+1,my_y), my_proc_id, comm, mpi_ierr)
      |                                                                                 ^
parallel_module.f90:704:81: note: ‘mpi_send’ was previously declared here
  704 |                              processors(my_x+1,my_y), my_proc_id, comm, mpi_ierr)
      |                                                                                 ^
parallel_module.f90:704:81: note: code may be misoptimized unless ‘-fno-strict-aliasing’ is used
parallel_module.f90:528:92: warning: type of ‘mpi_recv’ does not match original declaration [-Wlto-type-mismatch]
  528 |                              processors(my_x-1,my_y), MPI_ANY_TAG, comm, mpi_stat, mpi_ierr)
      |                                                                                            ^
parallel_module.f90:712:92: note: ‘mpi_recv’ was previously declared here
  712 |                              processors(my_x-1,my_y), MPI_ANY_TAG, comm, mpi_stat, mpi_ierr)
      |                                                                                            ^
parallel_module.f90:712:92: note: code may be misoptimized unless ‘-fno-strict-aliasing’ is used
parallel_module.f90:922:69: warning: type of ‘mpi_bcast’ does not match original declaration [-Wlto-type-mismatch]
  922 |          call MPI_Bcast(rval, 1, MPI_REAL, from_whom, comm, mpi_ierr)
      |                                                                     ^
parallel_module.f90:948:74: note: type mismatch in parameter 7
  948 |          call MPI_Bcast(cval, n, MPI_CHARACTER, from_whom, comm, mpi_ierr)
      |                                                                          ^
parallel_module.f90:948:74: note: type ‘long int’ should match type ‘void’
parallel_module.f90:897:72: warning: type of ‘mpi_bcast’ does not match original declaration [-Wlto-type-mismatch]
  897 |          call MPI_Bcast(ival, 1, MPI_INTEGER, from_whom, comm, mpi_ierr)
      |                                                                        ^
parallel_module.f90:948:74: note: type mismatch in parameter 7
  948 |          call MPI_Bcast(cval, n, MPI_CHARACTER, from_whom, comm, mpi_ierr)
      |                                                                          ^
parallel_module.f90:948:74: note: type ‘long int’ should match type ‘void’
parallel_module.f90:875:67: warning: type of ‘mpi_bcast’ does not match original declaration [-Wlto-type-mismatch]
  875 |       call MPI_Bcast(lval, 1, MPI_LOGICAL, IO_NODE, comm, mpi_ierr)
      |                                                                   ^
parallel_module.f90:948:74: note: type mismatch in parameter 7
  948 |          call MPI_Bcast(cval, n, MPI_CHARACTER, from_whom, comm, mpi_ierr)
      |                                                                          ^
parallel_module.f90:948:74: note: type ‘long int’ should match type ‘void’
parallel_module.f90:948:74: note: ‘mpi_bcast’ was previously declared here
parallel_module.f90:948:74: note: code may be misoptimized unless ‘-fno-strict-aliasing’ is used
interp_option_module.f90: In function ‘read_interp_table’:
interp_option_module.f90:496:48: warning: ‘__builtin_memmove’ reading 128 bytes from a region of size 127 [-Wstringop-overread]
  496 |                   buffer = buffer(eos+1:BUFSIZE)
      |                                                ^
interp_option_module.f90:48:39: note: at offset [1, 128] into source object ‘buffer’ of size 128
   48 |       character (len=BUFSIZE) :: buffer
      |                                       ^
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/metgrid/src »
( cd src/ngl ; make -i -r DEV_TOP="/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS" CC="gcc" FC="gfortran" RANLIB="ranlib " all )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src/ngl »
make[1]: Rien à faire pour « all ».
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src/ngl »
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r g1print.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="gfortran" \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_GRIBUTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src »
Makefile:90: avertissement : surchargement de la recette pour la cible « .F.o »
../../configure.wps:107: avertissement : ancienne recette ignorée pour la cible « .F.o »
Makefile:95: avertissement : surchargement de la recette pour la cible « .c.o »
../../configure.wps:99: avertissement : ancienne recette ignorée pour la cible « .c.o »
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_GRIBUTIL -DUSE_JPEG2000 -DUSE_PNG g1print.F > g1print.f90
gfortran -c -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch g1print.f90
gfortran -o g1print.exe  g1print.o gribcode.o module_debug.o debug_cio.o libpgu.a
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src »
if [ -h g1print.exe ] ; then \
        /bin/rm -f g1print.exe ; \
fi ; \
if [ -h ../g1print.exe ] ; then \
        /bin/rm -f ../g1print.exe ; \
fi ; \
if [ -e src/g1print.exe ] ; then \
        ln -sf src/g1print.exe . ; \
fi
( cd src/ngl ; make -i -r DEV_TOP="/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS" CC="gcc" FC="gfortran" RANLIB="ranlib " all )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src/ngl »
make[1]: Rien à faire pour « all ».
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src/ngl »
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r g2print.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="gfortran" \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_GRIBUTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src »
Makefile:90: avertissement : surchargement de la recette pour la cible « .F.o »
../../configure.wps:107: avertissement : ancienne recette ignorée pour la cible « .F.o »
Makefile:95: avertissement : surchargement de la recette pour la cible « .c.o »
../../configure.wps:99: avertissement : ancienne recette ignorée pour la cible « .c.o »
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_GRIBUTIL g2print.F > g2print.f90
gfortran -c -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich  -fallow-argument-mismatch g2print.f90 -I. -I./ngl/g2
g2print.f90:1102:26:

 1100 |          call gbyte(cgrib,discipline,iofst,8)     ! Discipline
      |                          2
 1101 |          iofst=iofst+8
 1102 |          call gbyte(cgrib,grib_edition,iofst,8)   ! GRIB edition number
      |                          1
Warning: Type mismatch between actual argument at (1) and actual argument at (2) (INTEGER(4)/REAL(4)).
if [ -z  ] ; then \
                  gfortran -o g2print.exe  g2print.o \
                        filelist.o gridinfo.o \
                        -L. -lpgu \
                        -L./ngl -lw3 -lg2_4 \
                        -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz ; \
                        else \
                  gfortran -o g2print.exe  g2print.o \
                        filelist.o gridinfo.o \
                        libpgu.a  \
                        ./ngl/w3/libw3.a ./ngl/g2/libg2_4.a \
                        -L/usr/local/jasper/lib -ljasper -L/usr/lib/x86_64-linux-gnu -lpng -lz ; \
                        fi
/usr/bin/ld: /usr/local/jasper/lib/libjasper.a(jas_stream.o) : dans la fonction « jas_stream_tmpfile » :
/tmp/jasper-1.900.1/src/libjasper/base/jas_stream.c:368:(.text+0x6bc): avertissement : the use of `tmpnam' is dangerous, better use `mkstemp'
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/ungrib/src »
if [ -h g2print.exe ] ; then \
        /bin/rm -f g2print.exe ; \
fi ; \
if [ -h ../g2print.exe ] ; then \
        /bin/rm -f ../g2print.exe ; \
fi ; \
if [ -e src/g2print.exe ] ; then \
        ln -sf src/g2print.exe . ; \
fi
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r rd_intermediate.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="mpif90 " \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
/bin/rm -f cio.o
mpicc -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL  -c cio.c
/bin/rm -f module_debug.o module_debug.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include module_debug.F > module_debug.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c module_debug.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f met_data_module.o met_data_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include met_data_module.F > met_data_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c met_data_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f constants_module.o constants_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include constants_module.F > constants_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c constants_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f misc_definitions_module.o misc_definitions_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include misc_definitions_module.F > misc_definitions_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c misc_definitions_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f read_met_module.o read_met_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include read_met_module.F > read_met_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c read_met_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f rd_intermediate.o rd_intermediate.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include rd_intermediate.F > rd_intermediate.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c rd_intermediate.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
gfortran -o rd_intermediate.exe  rd_intermediate.o read_met_module.o \
        module_debug.o misc_definitions_module.o cio.o met_data_module.o constants_module.o
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
if [ -h rd_intermediate.exe ] ; then \
        /bin/rm -f rd_intermediate.exe ; \
fi ; \
if [ -h ../rd_intermediate.exe ] ; then \
        /bin/rm -f ../rd_intermediate.exe ; \
fi ; \
if [ -e src/rd_intermediate.exe ] ; then \
        ln -sf src/rd_intermediate.exe . ; \
fi
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r mod_levs.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="mpif90 " \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
/bin/rm -f write_met_module.o write_met_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include write_met_module.F > write_met_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c write_met_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f mod_levs.o mod_levs.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include mod_levs.F > mod_levs.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c mod_levs.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
gfortran -o mod_levs.exe  mod_levs.o module_debug.o read_met_module.o \
        write_met_module.o misc_definitions_module.o cio.o met_data_module.o constants_module.o
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
if [ -h mod_levs.exe ] ; then \
        /bin/rm -f mod_levs.exe ; \
fi ; \
if [ -h ../mod_levs.exe ] ; then \
        /bin/rm -f ../mod_levs.exe ; \
fi ; \
if [ -e src/mod_levs.exe ] ; then \
        ln -sf src/mod_levs.exe . ; \
fi
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r avg_tsfc.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="mpif90 " \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
/bin/rm -f gridinfo_module.o gridinfo_module.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include gridinfo_module.F > gridinfo_module.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c gridinfo_module.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f module_date_pack.o module_date_pack.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include module_date_pack.F > module_date_pack.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c module_date_pack.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f avg_tsfc.o avg_tsfc.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include avg_tsfc.F > avg_tsfc.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c avg_tsfc.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
gfortran  -o avg_tsfc.exe avg_tsfc.o cio.o module_debug.o gridinfo_module.o \
        read_met_module.o write_met_module.o module_date_pack.o \
        misc_definitions_module.o met_data_module.o constants_module.o
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
if [ -h avg_tsfc.exe ] ; then \
        /bin/rm -f avg_tsfc.exe ; \
fi ; \
if [ -h ../avg_tsfc.exe ] ; then \
        /bin/rm -f ../avg_tsfc.exe ; \
fi ; \
if [ -e src/avg_tsfc.exe ] ; then \
        ln -sf src/avg_tsfc.exe . ; \
fi
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r calc_ecmwf_p.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="mpif90 " \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
/bin/rm -f module_stringutil.o module_stringutil.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include module_stringutil.F > module_stringutil.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c module_stringutil.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
/bin/rm -f calc_ecmwf_p.o calc_ecmwf_p.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include calc_ecmwf_p.F > calc_ecmwf_p.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c calc_ecmwf_p.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
gfortran  -o calc_ecmwf_p.exe calc_ecmwf_p.o cio.o module_debug.o module_stringutil.o gridinfo_module.o \
        read_met_module.o write_met_module.o module_date_pack.o \
        misc_definitions_module.o met_data_module.o constants_module.o
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
if [ -h calc_ecmwf_p.exe ] ; then \
        /bin/rm -f calc_ecmwf_p.exe ; \
fi ; \
if [ -h ../calc_ecmwf_p.exe ] ; then \
        /bin/rm -f ../calc_ecmwf_p.exe ; \
fi ; \
if [ -e src/calc_ecmwf_p.exe ] ; then \
        ln -sf src/calc_ecmwf_p.exe . ; \
fi
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r height_ukmo.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="mpif90 " \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
/bin/rm -f height_ukmo.o height_ukmo.mod
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL -DUSE_JPEG2000 -DUSE_PNG -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include height_ukmo.F > height_ukmo.f90
mpif90  -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -fallow-argument-mismatch -c height_ukmo.f90 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include
gfortran  -o height_ukmo.exe height_ukmo.o cio.o module_debug.o gridinfo_module.o \
        read_met_module.o write_met_module.o module_date_pack.o \
        misc_definitions_module.o met_data_module.o constants_module.o
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
if [ -h height_ukmo.exe ] ; then \
        /bin/rm -f height_ukmo.exe ; \
fi ; \
if [ -h ../height_ukmo.exe ] ; then \
        /bin/rm -f ../height_ukmo.exe ; \
fi ; \
if [ -e src/height_ukmo.exe ] ; then \
        ln -sf src/height_ukmo.exe . ; \
fi
( cd src ; \
        if [ "" = yes ] ; then \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        else \
          WRF_DIR2=/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF ; \
        fi ; \
make -i -r int2nc.exe \
        WRF_DIR="$WRF_DIR2" \
        FC="mpif90 " \
        CC="mpicc" \
        CPP="/usr/bin/cpp -P -traditional" \
        FFLAGS="-ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich" \
        CFLAGS="" \
        LDFLAGS="" \
        CPPFLAGS="-D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL" )
make[1] : on entre dans le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
/bin/rm -f int2nc.f90
/usr/bin/cpp -P -traditional -D_UNDERSCORE -DBYTESWAP -DLINUX -DIO_NETCDF -DBIT32 -DNO_SIGNAL -D_MPI -D_UTIL int2nc.F > int2nc.f90
gfortran -ffree-form -O -fconvert=big-endian -frecord-marker=4 -fallow-argument-mismatch -I/usr/include/x86_64-linux-gnu/mpich -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include -c int2nc.f90
gfortran -o int2nc.exe  -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -I/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/inc -I/usr/include int2nc.o module_debug.o misc_definitions_module.o read_met_module.o cio.o -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib1 -lio_grib1 -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_grib_share -lio_grib_share -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_int -lwrfio_int -L/home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF/external/io_netcdf -lwrfio_nf -L/usr/lib -L/usr/lib/x86_64-linux-gnu -lnetcdff -lnetcdf 
make[1] : on quitte le répertoire « /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS/util/src »
if [ -h int2nc.exe ] ; then \
        /bin/rm -f int2nc.exe ; \
fi ; \
if [ -h ../int2nc.exe ] ; then \
        /bin/rm -f ../int2nc.exe ; \
fi ; \
if [ -e src/int2nc.exe ] ; then \
        ln -sf src/int2nc.exe . ; \
fi
=== Validation WPS ===
lrwxrwxrwx 1 stefdev stefdev 23 juin   1 13:10 geogrid.exe -> geogrid/src/geogrid.exe
lrwxrwxrwx 1 stefdev stefdev 21 juin   1 13:10 ungrib.exe -> ungrib/src/ungrib.exe
lrwxrwxrwx 1 stefdev stefdev 23 juin   1 13:10 metgrid.exe -> metgrid/src/metgrid.exe
============================================================
OK : WRF + WPS compilés en natif Linux.
WRF : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WRF
WPS : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/src/WPS
Logs : /home/stefdev/Documents/meteo/wrf-bretagne-native-linux/logs
============================================================
stefdev@stefdev-HP-EliteDesk-800-G2-SFF:~/Documents/meteo/wrf-bretagne-native-linux$ 