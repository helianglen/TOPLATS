GFC = /home/ice/nchaney/UTILS/gcc-4.8/bin/gfortran
#GFC = gfortran
IFC = /opt/intel/bin/ifort
FFLAGS = -g -O3
LIBS = -fopenmp
TOPLATS = TOPLATS_3.0
TESTS = TESTS/TESTS_DRIVER
CATCHMENT_TESTS = TESTS/CATCHMENT_TESTS_DRIVER
TOPLATS_OBJS = MODEL/MODULE_VARIABLES.f90 MODEL/MODULE_TOPMODEL.f90  MODEL/MODULE_SNOW.f90 MODEL/MODULE_IO.f90 MODEL/MODULE_SHARED.f90 MODEL/MODULE_FROZEN_SOIL.f90 MODEL/MODULE_ATMOS.f90 MODEL/MODULE_LAND.f90 MODEL/MODULE_CANOPY.f90 MODEL/MODULE_CELL.f90 MODEL/MODULE_REGIONAL.f90 MODEL/TOPLATS_DRIVER.f90
TEST_OBJS = TESTS/fruit/fruit_util.f90 TESTS/fruit/fruit.f90 MODEL/MODULE_VARIABLES.f90 MODEL/MODULE_SNOW.f90 MODEL/MODULE_IO.f90 MODEL/MODULE_SHARED.f90 MODEL/MODULE_FROZEN_SOIL.f90 MODEL/MODULE_ATMOS.f90 MODEL/MODULE_LAND.f90 MODEL/MODULE_CANOPY.f90 MODEL/MODULE_CELL.f90 MODEL/MODULE_TOPMODEL.f90 MODEL/MODULE_REGIONAL.f90 TESTS/TESTS_DRIVER.f90
CATCHMENT_TEST_OBJS = TESTS/fruit/fruit_util.f90 TESTS/fruit/fruit.f90 MODEL/MODULE_VARIABLES.f90 TESTS/CATCHMENT_TESTS_DRIVER.f90

all: $(TOPLATS) $(TESTS) $(CATCHMENT_TESTS)

$(TOPLATS) : $(TOPLATS_OBJS)
	$(GFC) $(FFLAGS) -o $@ $^ $(LIBS)

$(TESTS) : $(TEST_OBJS)
	$(GFC) $(FFLAGS) -o $@ $^ $(LIBS)

$(CATCHMENT_TESTS) : $(CATCHMENT_TEST_OBJS)
	$(GFC) $(FFLAGS) -Wall -o $@ $^ $(LIBS)

clean:
	rm $(TOPLATS) $(TESTS) $(CATCHMENT_TESTS) *.mod

