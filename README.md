# mycondaenv

Source for building a Docker image or a Vagrant base box that has [Miniconda](http://conda.pydata.org/miniconda.html) and packages I use for data-related stuff.

The environement includes:

 * Python 2.7
 * Miniconda to install software packages with [conda](https://github.com/conda/conda)
 * IPython notebook server
  	* launched by typing "ipynb" in the command line
  	* serves .ipynb files located in the ipynb/ directory of this repo (accessed at /vagrant/ipynb in the VM)
 * Pandas
 * Scikit-learn
