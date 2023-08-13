terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["C:\Users\Olatunde\.aws\config"]
  shared_credentials_files = ["C:\Users\Olatunde\.aws\credentials"]
  profile                  = "Olatunde"
}
