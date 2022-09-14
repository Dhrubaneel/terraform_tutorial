resource "aws_s3_bucket" "news_bucket" {
  bucket = "${var.environment}-${var.bucket_name}" 
}

resource "aws_s3_bucket_public_access_block" "news_bucket_public_access" {
  bucket = aws_s3_bucket.news_bucket.id

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "news_bucket_config" {
  bucket = aws_s3_bucket.news_bucket.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}