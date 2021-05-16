terraform{
    required_version = ">= 0.15.0"

    required_providers {
      aws ={
          source = "hashicorp/aws"
          version = "3.40.0"
      }
    }
    
    
}

provider "aws" {
  region = "us-east-2"
}
resource "aws_s3_bucket" "S3Storage" {
  bucket = "meu-bucket-teste1236547892030"
  acl    = "private"

  tags = {
    Name : "My bucket2"
    Environment : "Dev"
    Managed : "Terraform"
  }
}