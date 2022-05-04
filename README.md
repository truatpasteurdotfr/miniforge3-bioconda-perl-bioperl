# a miniforge3 based container with bioconda-bioperl

Using https://github.com/conda-forge/miniforge/ instead of miniconda3 from Anaconda.com

docker: 
```
docker pull ghcr.io/truatpasteurdotfr/miniforge3-bioconda-perl-bioperl:main
```
singularity:
```
singularity shell --nv oras://ghcr.io/truatpasteurdotfr/miniforge3-bioconda-perl-bioperl:latest
```

