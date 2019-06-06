FROM continuumio/miniconda3:4.6.14
MAINTAINER Sangram Keshari Sahu <sangramsahu15@gmail.com>

RUN apt-get update && apt-get install -y procps && apt-get clean -y
RUN conda install conda=4.6.7

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
# Pull the environment name out of the environment.yml
RUN echo "source activate $(head -1 /environment.yml | cut -d' ' -f2)" > ~/.bashrc
ENV PATH /opt/conda/envs/$(head -1 /environment.yml | cut -d' ' -f2)/bin:$PATH
