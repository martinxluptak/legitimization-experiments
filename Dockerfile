FROM jupyter/tensorflow-notebook

COPY jupyter_notebook_config.py /home/jovyan/.jupyter/jupyter_notebook_config.py
COPY dependencies.txt /home/jovyan/
COPY host.key /home/jovyan/.ssl/host.key
COPY host.cert /home/jovyan/.ssl/host.cert

USER root

RUN ["chown", "jovyan", "/home/jovyan/.ssl/host.key"]
RUN ["chown", "jovyan", "/home/jovyan/.ssl/host.cert"]
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim-tiny", "cmake"]
RUN ["pip", "install", "-r", "dependencies.txt"]
