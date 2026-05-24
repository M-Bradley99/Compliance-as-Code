resource "aws_s3_bucket" "bad_bucket" {
  bucket = "insecure-example-bucket"
}

# No encryption
# No versioning
# Public access allowed
