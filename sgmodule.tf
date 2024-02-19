module "sgmodule"{
    source = "../module]/sg"

}

provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "sgtest" {
   ami = "ami-0d3f444bc76de0a79"
   instance_type = "t2.micro"
   vpc_security_group_ids = [module.sgmodule.sg]
    
   }
  


