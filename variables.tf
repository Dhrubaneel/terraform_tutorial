variable "access_key" {
  description = "Access Key for the AWS account using which infrastructure will be created"
  type = string
}

variable "secret_key"{
  description = "Secret Key for the AWS account using which infrastructure will be created"
  type = string
}

variable "region" {
  description = "AWS Region where the resource will be created"
  type = string
}

variable "bucket_name" {
  description = "BUcket name where news data will get store"
  type = string
  default = "news-reports-store"
}

variable "environment" {
  description = "Resource environment"
  type = string
}