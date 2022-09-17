output "bucket_arn" {
  description = "ARN number of the s3 bucket"
  value       = aws_s3_bucket.s3.arn
}