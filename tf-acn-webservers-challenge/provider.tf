############################################# TERRAFORM #############################################

terraform {
  backend "s3" {
    bucket  = "tf-state-929365926532"
    key     = "tf-acn-treinamento/tf-acn-webservers-challenge.tfstate"
    region  = "us-east-1"
    profile = "test"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
}

############################################# TERRAFORM #############################################