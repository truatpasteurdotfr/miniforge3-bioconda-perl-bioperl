FROM condaforge/miniforge3:latest
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

RUN	conda update --yes -n base -c defaults conda && \
	conda update --yes --all 

RUN  bash -c 'eval "$(conda shell.bash hook)" && \
	conda create --name bioperl -y && \
	conda activate bioperl && \
	conda install -c bioconda perl-bioperl  -y && \
	date +"%Y-%m-%d-%H%M" > /last_update'

