
# it will create s3 bucket in aws 
resource "aws_s3_bucket" "idream-bk" {
#bucket = "idreamit-bucket-123456"
bucket = local.bucket_name
 tags = {
  #Name = "dev-bucket-idream"
   
   #Environment =dev
   Environment = var.environment
 }
}
resource "aws_vpc" "myvpc" {
cidr_block = "10.0.1.0/24"
#region = "ap-south-1"
region = var.region
tags = {
Environment=var.environment
Name = local.vpc_name

}

}
