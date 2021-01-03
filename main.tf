terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.22"
    }
  }
}

provider "aws" {
  profile = "terraform"
  region  = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name            = local.vpc_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  az_a                = local.az_a
  eip_addr            = var.eip_addr
}

