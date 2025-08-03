module "vpc" {
  source     = "../../modules/networking/vpc"
  cidr_block = var.vpc_cidr_block
  tags       = var.tags
}