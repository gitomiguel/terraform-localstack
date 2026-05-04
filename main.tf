terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

#Tarea 1
resource "aws_s3_bucket" "bucket_tarea1" {
  bucket = "bucket-tarea1-localstack"
}

#Tarea 2
resource "aws_s3_bucket" "bucket_tarea2" {
  bucket = "bucket-tarea2-localstack"
#Tarea 3
  force_destroy = true
}

#Tarea 4
module "bucket_modulo" {
  source        = "./modules/mi-recurso"
  bucket_name   = "bucket-modulo-localstack"
  force_destroy = true
}
