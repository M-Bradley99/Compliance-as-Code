# CM-6: Configuration Settings
# Ensures that S3 buckets have versioning enabled.

deny[msg] {
  input.resource_type == "aws_s3_bucket"
  not input.versioning_enabled
  msg = "CM-6: S3 bucket must have versioning enabled"
}
