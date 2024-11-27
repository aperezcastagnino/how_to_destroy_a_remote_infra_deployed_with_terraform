#!/bin/bash

source .env
export TF_VAR_REGION
export TF_VAR_ACCESS_KEY
export TF_VAR_SECRET_KEY
export TF_BACKEND_BUCKET
export TF_TFSTATE_FILENAME
export TF_BACKEND_ENCRYPT


terraform init -reconfigure \
  -backend-config="region=$TF_VAR_REGION" \
  -backend-config="access_key=$TF_VAR_ACCESS_KEY" \
  -backend-config="secret_key=$TF_VAR_SECRET_KEY" \
  -backend-config="bucket=$TF_BACKEND_BUCKET" \
  -backend-config="key=$TF_TFSTATE_FILENAME" \
  -backend-config="encrypt=$TF_BACKEND_ENCRYPT"

terraform destroy -var-file=terraform.tfvars
