package nist.sc28

# SC-28: Protection of Information at Rest
# This policy checks that storage resources have encryption enabled.

deny[msg] {
  input.resource_type == "aws_s3_bucket"
  not input.encryption_enabled
  msg = "SC-28: S3 bucket must have encryption enabled"
}
