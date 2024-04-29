FROM mambaorg/micromamba

WORKDIR /src

COPY environment.yml ./

RUN micromamba create -f environment.yml -y

ENTRYPOINT [ "micromamba", "run", "-n", "DSLab", "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]