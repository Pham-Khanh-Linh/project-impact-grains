DATA_DIR="data"

if [ ! -d "$DATA_DIR" ]; then
    mkdir -p "$DATA_DIR"
    echo "data directory created."
else
    echo "data directory already exists."
fi

# #### RUN with OPENMP
export OMP_NUM_THREADS=4
../../lammps_builds/lmp_stable_22052025_update4 -in in.impact
# #### RUN with MPI
# mpiexec -n 2 ../../lammps_builds/lmp_stable_22052025_update4 -in in.pour.grains

