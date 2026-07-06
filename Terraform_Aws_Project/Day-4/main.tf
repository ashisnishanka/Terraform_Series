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
provider "aws" {
  region = "ap-south-1"
}
# ec2-instance code 
resource "aws_instance" "web" {
  ami = "ami-0f9235932f10668d4"
   #instance_type = "t3.micro"
   instance_type=var.instancetype
 
}