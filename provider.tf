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
  access_key = "AKIAX5WC3HEW7ZX7347S"
  secret_key = "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"
}
