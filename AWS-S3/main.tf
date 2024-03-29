resource "aws_s3_bucket" "infraSity" {
  bucket = lower("infraSity")
  acl = "private"
  versioning {
    enabled = true
  }
  tags ={
    name = "S3 bucket"
  }
}