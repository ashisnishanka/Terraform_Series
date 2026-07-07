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
}