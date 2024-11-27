#!/bin/bash

if [ -z $1 ]; then
  echo "Path to terraform.tfstate is required (remotely, for example S3)"
  exit 1
fi

export TF_BACKEND_KEY=$1

source .env
export TF_VAR_region TF_VAR_access_key TF_VAR_secret_key TF_BACKEND_BUCKET TF_BACKEND_KEY TF_BACKEND_ENCRYPT

terraform init -reconfigure \
  -backend-config="region=$TF_VAR_region" \
  -backend-config="access_key=$TF_VAR_access_key" \
  -backend-config="secret_key=$TF_VAR_secret_key" \
  -backend-config="bucket=$TF_BACKEND_BUCKET" \
  -backend-config="key=$TF_BACKEND_KEY" \
  -backend-config="encrypt=$TF_BACKEND_ENCRYPT"

terraform destroy
