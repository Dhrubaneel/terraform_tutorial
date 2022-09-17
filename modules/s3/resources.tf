resource "aws_s3_bucket" "s3" {
  bucket = "${var.environment}-${data.aws_region.current_region.name}-${var.bucket_name}"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_encription" {
  bucket = aws_s3_bucket.s3.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}


resource "aws_s3_bucket_public_access_block" "s3_public_access" {
  bucket = aws_s3_bucket.s3.bucket

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}