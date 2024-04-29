FROM mambaorg/micromamba

WORKDIR /src

COPY environment.yml ./

RUN micromamba create -f environment.yml -y
