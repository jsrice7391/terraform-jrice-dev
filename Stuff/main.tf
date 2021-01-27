terraform {
  backend "s3" {
    bucket = "jrice-dev-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "3.2.0"
    }
  }
}
