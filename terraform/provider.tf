# PROVIDER
terraform {

  required_version = "~> 1.5.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "rm550801-tf-notifier-state-v1"
    key            = "terraform.tfstate"
    dynamodb_table = "rm550801-tf-notifier-state-v1"
    region         = "us-east-1"
  }

}

# provider "aws" {
#   region                   = "us-east-1"
#   shared_config_files      = ["./.aws/config"]
#   shared_credentials_files = ["./.aws/credentials"]
#   profile                  = "fiap"
# }
