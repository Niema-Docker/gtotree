# Minimal Docker image for GToTree using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install GToTree
RUN micromamba create -y -n gtotree -c astrobiomike -c conda-forge -c bioconda gtotree==1.8.19 && \
    micromamba clean --all --yes
ENV ENV_NAME=gtotree
