terraform {
  required_version = ">= 1.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
  bucket       = "boocamp-2026-saiful-izam-078716600792-ap-southeast-1-an"
  key          = "terraform2/terraform.tfstate"
  region       = "ap-southeast-1"
  use_lockfile = true
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

data "aws_caller_identity" "my_account" {}