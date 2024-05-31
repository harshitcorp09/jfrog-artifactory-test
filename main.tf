terraform {
  required_providers {
    artifactory = {
      source = "jfrog/artifactory"
    }
  }
}

provider "artifactory" {
  url      = "https://harshithashicorp.jfrog.io/artifactory"
  username = "harshit.dixit@hashicorp.com"
  password = "Changeme@123"
}

module "ec2" {
  source = "harshithashicorp/harshittest-terraform-modules-local/sdk/terraform-aws-ec2-instance/aws"
  version = "v1.0.0"
}
