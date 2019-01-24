MINICONDA_URL="http://repo.continuum.io/miniconda"
MINICONDA_FILE="Miniconda-latest-Linux-x86_64.sh"
export CHOME=$HOME/miniconda
wget "${MINICONDA_URL}/${MINICONDA_FILE}"
bash $MINICONDA_FILE -b -p $CHOME

export PATH=$HOME/miniconda/bin:$PATH

conda update --yes conda
