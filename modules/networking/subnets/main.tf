resource "aws_subnet" "this" {
  for_each = {
    for subnet in var.subnets : subnet.name => subnet
  }

  vpc_id                                         = var.vpc_id
  cidr_block                                     = each.value.cidr_block
  availability_zone                              = lookup(each.value, "availability_zone", null)
  availability_zone_id                           = lookup(each.value, "availability_zone_id", null)
  ipv6_cidr_block                                = lookup(each.value, "ipv6_cidr_block", null)
  ipv6_native                                    = lookup(each.value, "ipv6_native", false)
  assign_ipv6_address_on_creation                = lookup(each.value, "assign_ipv6_address_on_creation", false)
  map_public_ip_on_launch                        = lookup(each.value, "map_public_ip_on_launch", false)
  enable_dns64                                   = lookup(each.value, "enable_dns64", false)
  enable_lni_at_device_index                     = lookup(each.value, "enable_lni_at_device_index", null)
  enable_resource_name_dns_a_record_on_launch    = lookup(each.value, "enable_resource_name_dns_a_record_on_launch", false)
  enable_resource_name_dns_aaaa_record_on_launch = lookup(each.value, "enable_resource_name_dns_aaaa_record_on_launch", false)
  customer_owned_ipv4_pool                       = lookup(each.value, "customer_owned_ipv4_pool", null)
  outpost_arn                                    = lookup(each.value, "outpost_arn", null)
  map_customer_owned_ip_on_launch                = lookup(each.value, "map_customer_owned_ip_on_launch", false)
  private_dns_hostname_type_on_launch            = lookup(each.value, "private_dns_hostname_type_on_launch", null)

  tags = merge(
    var.tags,
    lookup(each.value, "tags", {}),
    {
      Name = each.value.name
    }
  )
}