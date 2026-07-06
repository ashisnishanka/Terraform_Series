terraform {
  #backend block where terraform statefile will store 
  #it will store in s3 bucket and it is called remote statefile
  backend "s3" {
   bucket = "idreamit-terraform-state"
   key = "dev/terraform.tfstate"
   region = "ap-south-1"
   encrypt = true
   #use_lockfile = true
}
#provider block 
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
#added here new code

variable "environment" {
default = "dev"

}
variable "devops_classes" {
default = "idreamit"

}


variable "region" {
default = "ap-south-1"

}
# it will create s3 bucket in aws 
resource "aws_s3_bucket" "idream-bk" {
bucket = "idreamit-bucket-123456"
#bucket = local.bucket_name
 tags = {
  #Name = "dev-bucket-idream"
   
   Environment =var.environment
   #Environment = var.environment
 }
}
resource "aws_vpc" "myvpc" {
cidr_block = "10.0.1.0/24"
#region = "ap-south-1"
region = var.region
tags = {
Environment=var.environment
#Name = local.vpc_name

}

}

output "vpc-id" {
  value=aws_vpc.myvpc.id
}