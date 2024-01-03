# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-tanaka2024"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "kdltest"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "kdltest"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "kdltest"
  region  = "us-east-1"
}
