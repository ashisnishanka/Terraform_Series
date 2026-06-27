terraform {
  backend "s3" {
   bucket = "idreamit-terraform-state"
   key = "dev/terraform.tfstate"
   region = "ap-south-1"
   encrypt = true
   #use_lockfile = true
}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "idream-bk" {
bucket = "idreamit-bucket-123456"
 tags = {
  Name = "my test-bk"
  Environment = "Dev"
 }
}