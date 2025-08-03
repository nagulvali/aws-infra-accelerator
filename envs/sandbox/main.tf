module "vpc" {
  source     = "../../modules/networking/vpc"
  cidr_block = var.vpc_cidr_block
  tags       = var.tags
}

module "subnets" {
  source = "../../modules/networking/subnets"

  vpc_id = module.vpc.vpc_resource.id
  tags   = var.tags

  subnets = var.subnets
}

