# Inspired from https://registry.hub.docker.com/u/nfaggian/anaconda/
FROM phusion/baseimage

# Form a set of standard directories.
RUN mkdir -p /downloads
RUN mkdir -p /work

# Install "mini" anaconda python distribution (python 2.7)
RUN cd /downloads && wget http://repo.continuum.io/miniconda/Miniconda-3.5.2-Linux-x86_64.sh
RUN /bin/bash /downloads/Miniconda-3.5.2-Linux-x86_64.sh -b -p /work/anaconda/
RUN rm /downloads/Miniconda-3.5.2-Linux-x86_64.sh
RUN /work/anaconda/bin/conda update conda
RUN /work/anaconda/bin/conda install pandas scikit-learn ipython-notebook --yes
RUN echo "alias ipynb='ipython notebook --ip=0.0.0.0'" >> .bashrc