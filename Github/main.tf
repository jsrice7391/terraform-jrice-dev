terraform {
  backend "s3" {
    bucket = "jrice-dev-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}


