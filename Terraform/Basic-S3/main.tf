resource "aws_s3_bucket" "versioned_bucket" {
  bucket = var.bucket_name
  force_destroy = true

  versioning {
    enabled = true
  }

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}