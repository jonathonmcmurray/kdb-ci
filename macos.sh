MINICONDA_URL="http://repo.continuum.io/miniconda"
MINICONDA_FILE="Miniconda2-latest-MacOSX-x86_64.sh"
export CHOME=$HOME/miniconda
wget "${MINICONDA_URL}/${MINICONDA_FILE}"                           # download Miniconda install script
bash $MINICONDA_FILE -b -p $CHOME                                   # install Miniconda in $CHOME

export PATH=$HOME/miniconda/bin:$PATH                               # add conda to PATH

conda update --yes conda                                            # update conda
conda install --yes --channel kx kdb                                # install kdb+ via conda

source $CHOME/etc/profile.d/conda.sh                                # setup env for conda use
conda activate base                                                 # start base env (so QHOME is defined)
echo $KCLIC | base64 --decode > $QHOME/kc.lic                       # write kc.lic from env var

conda install --yes --channel jmcmurray qspec                       # install qutil & qspec via conda