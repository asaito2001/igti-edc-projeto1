provider "aws" {
  region = var.aws_region
}

# Centralizar o arquivo de controle do estado do terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-saito"
    key = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-1"
  }
}