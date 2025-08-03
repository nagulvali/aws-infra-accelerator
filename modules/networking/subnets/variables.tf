variable "vpc_id" {
  description = "VPC ID to associate subnets with"
  type        = string
}

variable "tags" {
  description = "Common tags applied to all subnets"
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "List of subnet configurations"
  type = list(object({
    name                                           = string
    cidr_block                                     = string
    availability_zone                              = optional(string)
    availability_zone_id                           = optional(string)
    ipv6_cidr_block                                = optional(string)
    ipv6_native                                    = optional(bool)
    assign_ipv6_address_on_creation                = optional(bool)
    map_public_ip_on_launch                        = optional(bool)
    enable_dns64                                   = optional(bool)
    enable_lni_at_device_index                     = optional(number)
    enable_resource_name_dns_a_record_on_launch    = optional(bool)
    enable_resource_name_dns_aaaa_record_on_launch = optional(bool)
    customer_owned_ipv4_pool                       = optional(string)
    outpost_arn                                    = optional(string)
    map_customer_owned_ip_on_launch                = optional(bool)
    private_dns_hostname_type_on_launch            = optional(string)
    tags                                           = optional(map(string), {})
  }))
}