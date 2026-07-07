# resource "aws_instance" "mylinuxos"{
#  ami = "ami-0f9235932f10668d4"
#  #instance_type = "t2.micro"
#  instance_type=var.instance_type
#  count =var.os_count
#  tags = {
#     Name = "Qa_mylinuxos"
# 	Environment = "var.environment"
#  }
 
# }