terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.47.0"
    }
  }
  required_version = "~> 1.8.1"
}

# # Provider block
provider "aws" {
  region  = "us-east-2"
  profile = "default"
}