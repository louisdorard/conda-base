# as root user
apt-get update

# as vagrant user
echo "alias ipynb='ipython notebook --ip=0.0.0.0 /vagrant/'" >> .bashrc
source .bashrc
wget http://repo.continuum.io/miniconda/Miniconda-3.3.0-Linux-x86_64.sh
bash Miniconda3-3.3.0-Linux-x86_64.sh # accept license when prompted
rm Miniconda-3.3.0-Linux-x86_64.sh
conda update conda # make sure we're up to date
conda install pandas scikit-learn ipython-notebook --yes
