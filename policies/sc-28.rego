package nist.sc28

deny if {
    input.resource_type == "aws_s3_bucket"
    not input.encryption_enabled
    msg := "SC-28: S3 bucket must have encryption enabled"
}
