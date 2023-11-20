# https://developer.hashicorp.com/terraform/language/settings/backends/s3
terraform {
  backend "s3" {
    bucket         = "infra-poc-gitops-terraform-lab-en1"
    key            = "poc-gitops-terraform/live/stage/terraform.tfstate"
    region         = "eu-north-1"
    profile        = "c10r-lab"
    dynamodb_table = "infra-poc-gitops-terraform-lab-en1-lock"
    encrypt        = true
  }
}
