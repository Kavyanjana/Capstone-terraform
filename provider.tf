terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.11.0"
    }
  }
  backend "s3" {
    bucket = "terraform-s3-tf"
    key    = "stages/terraform.tfstate"
    region = "us-east-1"
}
}
provider "aws" {
 region = "us-east-1"
}
