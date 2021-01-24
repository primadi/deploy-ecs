variable "region" {}
variable "vpc_name_map" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}

locals {
  vpc_name = var.vpc_name_map[terraform.workspace]
}
