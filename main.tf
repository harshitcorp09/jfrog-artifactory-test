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
provider_installation {
    direct {
        exclude = ["registry.terraform.io/*/*"]
    }
    network_mirror {
        url = "https://harshithashicorp.jfrog.io/artifactory/api/terraform/harshittest-terraform-modules-local/providers/"
    }
}

module "ec2" {
  source = "https://harshithashicorp.jfrog.io/artifactory/harshittest-terraform-modules-local/sdk/terraform-aws-ec2-instance/aws/v1.0.0.zip"
  #version = "v1.0.0"
}
