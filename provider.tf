terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["FICKY_AWS_ACCESS_KEY_ID"]
  shared_credentials_files = ["FICKY_AWS_SECRET_ACCESS_KEY"]
  profile                  = "Olatunde"
}
