MINICONDA_URL="http://repo.continuum.io/miniconda"
MINICONDA_FILE="Miniconda2-latest-Windows-x86_64.exe"
export CHOME=$HOME/miniconda
wget "${MINICONDA_URL}/${MINICONDA_FILE}"                           # download Miniconda install script
bash $MINICONDA_FILE /S /D=$CHOME                                   # install Miniconda in $CHOME

export PATH=$CHOME/bin:$PATH                                        # add conda to PATH

conda update --yes conda                                            # update conda
conda install --yes --channel kx kdb                                # install kdb+ via conda

source $CHOME/etc/profile.d/conda.sh                                # setup env for conda use
conda activate base                                                 # start base env (so QHOME is defined)
echo $KCLIC | base64 --decode > $QHOME/kc.lic                       # write kc.lic from env var

conda install --yes --channel jmcmurray qutil                       # install qutil via conda
wget https://github.com/nugend/qspec/archive/v1.3.3.zip             # download qspec from github
unzip v1.3.3.zip                                                    # extract qspec
ln -s $TRAVIS_BUILD_DIR/qspec-1.3.3/lib $QPATH/qspec                # link qspec into qutil package dir
