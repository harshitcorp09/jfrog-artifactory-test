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
  password = "eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJkbzVtV2h2LTN4YnlMcWdNMk9YZE03akhyVHI5MlhnZk9sZU5oTHFxVEw4In0.eyJzdWIiOiJqZnJ0QDAxaHoyMmphcXNtM2RrMGdwN2FlZDYxM3hkL3VzZXJzL2hhcnNoaXQuZGl4aXRAaGFzaGljb3JwLmNvbSIsInNjcCI6ImFwcGxpZWQtcGVybWlzc2lvbnMvdXNlciIsImF1ZCI6ImpmcnRAMDFoejIyamFxc20zZGswZ3A3YWVkNjEzeGQiLCJpc3MiOiJqZnJ0QDAxaHoyMmphcXNtM2RrMGdwN2FlZDYxM3hkL3VzZXJzL19zeXN0ZW1fIiwiZXhwIjoxNzE5NzY3NTk0LCJpYXQiOjE3MTcxNzU1OTQsImp0aSI6ImQ5ZDE3NWY5LWJhNWMtNDZkNC04NmU0LWM1MDI0YjIwYzg4NSJ9.a2FwmA22qm6mzUA6ah6LmvA6EQMi5iBVSBPtbyp9MNpLgm9PAZVx7GqQTzSdtQqayYWAdHkWUooUaUjBpN_H7UZmizZBntkrFr9wjGxooAZ9AFyQlIXLPUreuAFiQGjSgc9srcJ4WqltAC4tSyt8NgCNN878MPcTnKplTUIWklC5W11VM9OW1bLXomleEnhRGhQLhtdYBijIdVbgqRR043r-f2CDN3E2rNFmT7XAPra9EFT3DqH9PsftyG5Lu8AKWxu6cYjymDohQdR-fUSaCHVLsa-V3Jxvf-JuCFPcv1E6Bgo7rZ0MFFtl2i4_yyD1I_fOnNLj1PAce2Coyf3BQw"
}

module "ec2" {
  source = "https://harshithashicorp.jfrog.io/artifactory/harshittest-terraform-modules-local/sdk/terraform-aws-ec2-instance/aws/v1.0.0.zip"
  #version = "v1.0.0"
}
