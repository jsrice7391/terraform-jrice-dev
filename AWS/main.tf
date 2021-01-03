# Terrafroms true pwoer comes with the ability o work with multiple providers and manage those resources with a singular language
#  Create a provider block for the AWS provider 
terraform {
  backend "s3" {
    bucket = "jrice-dev-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_ecr_repository" "jrice_dev" {
  name                 = "jrice-dev"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  } 
}
