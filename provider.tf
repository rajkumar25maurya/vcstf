#Terraform Block
terraform {
  backend "s3" {
    bucket = "ansh-tfstate"
    key    = "raj.tfstate"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.47.0"
    }
  }
  required_version = "~> 1.8.1"
}

# Provider block
provider "aws" {
  # region  = "us-east-2"
  region  = var.a != "" ? var.a : "us-east-2"
  profile = "default"
}