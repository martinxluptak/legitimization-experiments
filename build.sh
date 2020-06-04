#!/bin/sh


KEYFILE="host.key"
CERTFILE="host.cert"
TAG="jupyter-bd"

# create SSH key pair to securely acccess jupyter
openssl genrsa 4096 > "$KEYFILE"
chmod 400 "$KEYFILE"
openssl req -new -x509 -nodes -sha256 -days 365 -key "$KEYFILE" -out "$CERTFILE"

# build the container
docker build -t "$TAG" .
