terraform {
  required_version = ">= 0.15.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.40.0"
    }
  }


}

provider "aws" {
  region = "us-east-2"
}
resource "aws_s3_bucket" "S3Storage2" {
  bucket = "meu-bucket-teste12novo"
  acl    = "private"

  tags = {
    Name        = "My bucket2"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Cezar Augusto"
    UpdateAt    = "2021-05-16"
  }
}