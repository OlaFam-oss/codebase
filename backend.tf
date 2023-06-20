terraform {
  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = var.bucket //"dev-tform-state-file"
    key    = var.key    //"dev/terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}

required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 4.16"
  }
}

