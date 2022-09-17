module "s3_sydney" {
  source      = "./modules/s3"
  environment = var.environment
  bucket_name = var.bucket_name
}

module "s3_mumbai" {
  source = "./modules/s3"
  providers = {
    aws = aws.mumbai
  }
  environment = var.environment
  bucket_name = var.bucket_name
}