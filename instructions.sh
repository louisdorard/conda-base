# as vagrant user
echo "alias ipynb='ipython notebook --ip=0.0.0.0 /vagrant/ipynb/'" >> .bashrc
source .bashrc
wget http://repo.continuum.io/miniconda/Miniconda-3.5.2-Linux-x86_64.sh # this is the version based on Python 2
bash Miniconda-3.5.2-Linux-x86_64.sh # accept license when prompted
rm Miniconda-3.5.2-Linux-x86_64.sh
source .bashrc # 'conda' is now in the path
conda update conda # make sure we're up to date
conda install pandas scikit-learn ipython-notebook --yes
