terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "3.2.0"
    }
  }
}

provider "heroku" {
  # Configuration options
}
