# # it will create s3 bucket in aws 
# resource "aws_s3_bucket" "idream-bk" {
# #bucket = "idreamit-bucket-123456"
# bucket = local.bucket_name
#  tags = {
#   #Name = "dev-bucket-idream"
   
#    #Environment =dev
#    Environment = var.environment
#  }
# }