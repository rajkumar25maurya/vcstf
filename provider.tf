terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.47.0"
    }
  }
  required_version = "~> 1.8.3"
  cloud {
    organization = "ramaseeds"

    workspaces {
      name = "vcsftf-cli"
    }
  }
}

# # Provider block
provider "aws" {
  region  = "us-east-2"

}