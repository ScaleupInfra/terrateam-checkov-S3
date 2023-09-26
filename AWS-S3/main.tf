resource "aws_s3_bucket" "infrasity" {
  bucket = lower("infraSity")
  acl = "private"
  versioning {
    enabled = true
  }
  tags = {
    name = "S3"
  }
}
