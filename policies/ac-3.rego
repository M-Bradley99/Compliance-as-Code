package nist.ac3

deny if {
    input.resource_type == "aws_s3_bucket"
    input.public_access == true
    msg := "AC-3: S3 bucket must not allow public access"
}
