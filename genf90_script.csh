#!/bin/csh

echo "${0}: running genf90.pl"

./tools/genf90/genf90.pl src/dyn_subgrid/dynVarMod.F90.in >! src/dyn_subgrid/dynVarMod.F90
./tools/genf90/genf90.pl src/dyn_subgrid/dynVarTimeInterpMod.F90.in >! src/dyn_subgrid/dynVarTimeInterpMod.F90
./tools/genf90/genf90.pl src/dyn_subgrid/dynVarTimeUninterpMod.F90.in >! src/dyn_subgrid/dynVarTimeUninterpMod.F90
./tools/genf90/genf90.pl src/init_interp/initInterp2dvar.F90.in >! src/init_interp/initInterp2dvar.F90
./tools/genf90/genf90.pl src/main/ncdio_pio.F90.in >! src/main/ncdio_pio.F90
./tools/genf90/genf90.pl src/utils/restUtilMod.F90.in >! src/utils/restUtilMod.F90
./tools/genf90/genf90.pl src/utils/array_utils.F90.in >! src/utils/array_utils.F90

echo "${0}: finished"

