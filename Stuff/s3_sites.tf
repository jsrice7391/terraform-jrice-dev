resource "aws_s3_bucket" "colondetox" {
  bucket = "colondetox.health"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
