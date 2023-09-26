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

resource "aws_s3_bucket_public_access_block" "public_block" {
   bucket = aws_s3_bucket.infraSity.id

   block_public_acls   = true
   block_public_policy = true
 }