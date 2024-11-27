
variable "account_id" {
  description = "AWS Account ID"
  default = ["123456789012"]
}

variable "region" {
  description = "Region where the infrastructure will be hosted (us-east-2, us-east-1, etc)"
  type        = string
}

variable "access_key" {
  description = "AWS Access Key ID for the account"
  type        = string
}
variable "secret_key" {
  description = "AWS Secret Access Key for the account"
  type        = string
}
