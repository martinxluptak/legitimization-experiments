#!/bin/sh

# refer to instructions on this link:
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html

docker run \
  -v "$PWD/workspace:/home/jovyan/work" \
  --network host \
  -e GRANT_SUDO=yes --user root \
  -e NB_UID=`id -u` \
  -e CHOWN_HOME=yes \
  -e JUPYTER_ENABLE_LAB=yes \
  -e RESTARTABLE=yes \
  -e GEN_CERT=yes \
  --name jupyter-bd \
  jupyter-bd
