provider "heroku" {
  # Configuration options
}

resource "heroku_app" "jrice-dev" {
  name   = "justinrice-dev"
  region = "us"

  buildpacks = ["https://buildpack-registry.s3.amazonaws.com/buildpacks/mars/create-react-app.tgz"]
}


resource "heroku_app" "think-devops-staging" {
  name       = "think-devops-staging"
  region     = "us"
  buildpacks = ["https://buildpack-registry.s3.amazonaws.com/buildpacks/mars/create-react-app.tgz"]
}

resource "heroku_app" "think-devops-production" {
  name       = "think-devops-production"
  region     = "us"
  buildpacks = ["https://buildpack-registry.s3.amazonaws.com/buildpacks/mars/create-react-app.tgz"]
}



