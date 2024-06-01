module "ec2" {
  source  = "harshithashicorp.jfrog.io/harshittest-terraform__sdk/terraform-aws-ec2-instance/aws"
  version = "v1.0.0"
  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
