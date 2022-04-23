#!/bin/bash

k3d cluster create -a 1 -s 1 \
  -v $PWD/manifests/:/var/lib/rancher/k3s/server/manifests/melvspace@server:0 \
  --k3s-arg "--disable=traefik@server:0" \
  --image rancher/k3s:v1.23.5-k3s1 \
  melvspace