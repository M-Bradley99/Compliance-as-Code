resource "aws_s3_bucket" "good_bucket" {
  bucket = "secure-example-bucket"

  # Encryption enabled (SC-28)
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  # Versioning enabled (CM-6)
  versioning {
    enabled = true
    }

  # Public access blocked (AC-3)
  acl = "private"
}
