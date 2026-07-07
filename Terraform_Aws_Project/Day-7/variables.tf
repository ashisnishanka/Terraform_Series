#added here new code
variable "environment" {
type = string
default = "dev"

}
variable "devops_classes" {
  type = string
  default = "idreamit"

}


variable "region" {
 type = string
default = "ap-south-1"

}

variable "instance_type" {
type = string
default = "t3.micro"

}

variable "os_count" {
type = number
default = 1

}