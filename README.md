# conda-base

Build a Docker image or a Vagrant base box off of dev-base, with [Miniconda](http://conda.pydata.org/miniconda.html) and selected packages. Intended to be used as an environment to run data-related jobs and as a development environment.

The Dockerfile is inspired from https://registry.hub.docker.com/u/nfaggian/anaconda/

The environment includes:

 * Python 2.7
 * Miniconda to install software packages with [conda](https://github.com/conda/conda)
 * IPython notebook server
  	* launched by typing "ipynb" in the command line
  	* serves .ipynb files located in the ipynb/ directory of this repo (accessed at /vagrant/ipynb in the VM)
 * Pandas
 * Scikit-learn
 * s3cmd, which is useful to dl/ul data to Amazon S3
 
