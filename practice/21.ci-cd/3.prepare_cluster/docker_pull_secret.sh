#!/bin/bash

NS=xpaste-development

kubectl delete secret xpaste-gitlab-registry --namespace "$NS"

kubectl create secret docker-registry xpaste-gitlab-registry \
  --docker-server registry.gitlab.com \
  --docker-email 'mail@alexanderavdeev.com' \
  --docker-username 'gitlab+deploy-token-1126714' \
  --docker-password 'csY-AocV3N1x8CeizXgQ' \
  --namespace "$NS"
