resource "aws_vpc" "this" {
  cidr_block                           = var.cidr_block
  ipv4_ipam_pool_id                    = var.ipv4_ipam_pool_id
  ipv4_netmask_length                  = var.ipv4_netmask_length
  assign_generated_ipv6_cidr_block     = var.assign_generated_ipv6_cidr_block
  ipv6_cidr_block                      = var.ipv6_cidr_block
  ipv6_cidr_block_network_border_group = var.ipv6_cidr_block_network_border_group
  ipv6_ipam_pool_id                    = var.ipv6_ipam_pool_id
  ipv6_netmask_length                  = var.ipv6_netmask_length
  instance_tenancy                     = var.instance_tenancy
  enable_dns_support                   = var.enable_dns_support
  enable_dns_hostnames                 = var.enable_dns_hostnames
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics

  tags = var.tags
}

resource "aws_vpc_ipv4_cidr_block_association" "this" {
  for_each   = { for idx, cidr in var.additional_ipv4_cidr_blocks : idx => cidr }
  vpc_id     = aws_vpc.this.id
  cidr_block = each.value
}