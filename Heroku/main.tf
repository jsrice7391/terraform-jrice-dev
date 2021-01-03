terraform {
  backend "s3" {
    bucket = "jrice-dev-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "3.2.0"
      region = "us"
    }
  }
}

provider "heroku" {
  # Configuration options
}

resource "heroku_app" "jrice-dev" {
  name = "justinrice-dev"
  region = "us"

  buildpacks = ["https://buildpack-registry.s3.amazonaws.com/buildpacks/mars/create-react-app.tgz"]
}