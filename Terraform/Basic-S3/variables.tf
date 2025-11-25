variable "aws_region" {
  description = "AWS region to create resources in"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}