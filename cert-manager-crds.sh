#!/usr/bin/env sh
set -u

kubectl get crd issuers.cert-manager.io > /dev/null 2>&1

if [ $? -ne 0 ]
then
  kubectl apply --validate=false -f https://github.com/cert-manager/cert-manager/releases/download/v1.12.0/cert-manager.crds.yaml
fi