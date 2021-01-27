

resource "heroku_app" "staging_app" {
  name   = var.app_name}-staging"
  region = "us"

  buildpacks = ["https://buildpack-registry.s3.amazonaws.com/buildpacks/mars/create-react-app.tgz"]

}

resource "heroku_app" "production_app" {
  name   = var.app_name}-staging"
  region = "us"

  buildpacks = ["https://buildpack-registry.s3.amazonaws.com/buildpacks/mars/create-react-app.tgz"]

}

# Create a Heroku pipeline
resource "heroku_pipeline" "app" {
  name = var.app_name

  owner {
    id   = "16d1c25f-d879-4f4d-ad1b-d807169aaa1c"
    type = "user"
  }
}

# Couple apps to different pipeline stages
resource "heroku_pipeline_coupling" "staging_coupling" {
  app      = heroku_app.staging_app.name
  pipeline = heroku_pipeline.app.id
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production_coupling" {
  app      = heroku_app.production_app.name
  pipeline = heroku_pipeline.app.id
  stage    = "production"
}
