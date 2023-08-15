terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "FICKY_AWS_ACCESS_KEY_ID"
  secret_key = "FICKY_AWS_SECRET_ACCESS_KEY"
}
