terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.9"
    }
  }

  backend "s3" {}
}

provider "aws" {
  allowed_account_ids = [var.account_id]
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}
