resource "aws_s3_bucket" "infraSity" {
  bucket = lower("infraSity")
  acl = "private"
  tags ={
    name = "S3 bucket"
  }
}
