# Inspired from https://registry.hub.docker.com/u/nfaggian/anaconda/
FROM phusion/baseimage
MAINTAINER Louis Dorard <louis@dorard.me>

# Make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# Install wget
RUN apt-get install -y wget

# Form a set of standard directories
RUN mkdir -p /downloads
RUN mkdir -p /work

# Install "mini" anaconda python distribution (python 2.7)
WORKDIR /downloads
RUN wget http://repo.continuum.io/miniconda/Miniconda-3.5.2-Linux-x86_64.sh
RUN /bin/bash Miniconda-3.5.2-Linux-x86_64.sh -b -p /work/anaconda/
RUN rm Miniconda-3.5.2-Linux-x86_64.sh
RUN /work/anaconda/bin/conda update conda
RUN /work/anaconda/bin/conda install pandas scikit-learn ipython-notebook --yes
RUN echo "alias ipynb='ipython notebook --ip=0.0.0.0'" >> .bashrc