provider "aws" {
  region = "ap-south-1"
}
module "ec2" {
  source  = "harshithashicorp.jfrog.io/harshittest-terraform__sdk/terraform-aws-ec2-instance/aws"
  version = "v1.0.0"
  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "Harshit-TFE-KeyPair"
  monitoring             = true
 
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
 }
