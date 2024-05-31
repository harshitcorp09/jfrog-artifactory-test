module "ec2" {
  source  = "https://harshithashicorp.jfrog.io/artifactory/harshittest-terraform-modules-local/sdk/terraform-aws-ec2-instance/aws/v1.0.0.zip"
}
terraform {
  required_providers {
    artifactory = {
      source = "jfrog/artifactory"
    }
  }
}

provider "artifactory" {
  url      = "https://harshithashicorp.jfrog.io/artifactory"
  username = var.artifactory_user
  password = var.artifactory_password
}
