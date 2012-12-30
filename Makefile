FC = gfortran
OPTS = 
FFLAGS = -g -fbounds-check -finit-local-zero
LIBS = -fopenmp
TOPLATS = TOPLATS_3.0
TESTS = TESTS_DRIVER
TOPLATS_OBJS = fruit/fruit_util.f90 fruit/fruit.f90 MODULE_VARIABLES.f90 MODULE_SNOW.f90 MODULE_TESTS.f90 MODULE_IO.f90 MODULE_SHARED.f90 MODULE_FROZEN_SOIL.f90 MODULE_ATMOS.f90 MODULE_LAND.f90 MODULE_CANOPY.f90 MODULE_CELL.f90 MODULE_TOPMODEL.f90 main.f90
TEST_OBJS = fruit/fruit_util.f90 fruit/fruit.f90 MODULE_VARIABLES.f90 MODULE_SNOW.f90 MODULE_TESTS.f90 MODULE_IO.f90 MODULE_SHARED.f90 MODULE_FROZEN_SOIL.f90 MODULE_ATMOS.f90 MODULE_LAND.f90 MODULE_CANOPY.f90 MODULE_CELL.f90 MODULE_TOPMODEL.f90 TESTS_DRIVER.f90

all: $(TOPLATS) $(TESTS)

$(TOPLATS) : $(TOPLATS_OBJS)
	$(FC) $(FFLAGS) -o $@ $^ $(LIBS)

$(TESTS) : $(TEST_OBJS)
	$(FC) $(FFLAGS) -o $@ $^ $(LIBS)

clean:
	rm $(TOPLATS) $(TESTS) *.mod

