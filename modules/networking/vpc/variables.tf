variable "cidr_block" {
  description = "The primary IPv4 CIDR block for the VPC."
  type        = string
}

variable "ipv4_ipam_pool_id" {
  description = "ID of an IPv4 IPAM pool to use when allocating the VPC CIDR block."
  type        = string
  default     = null
}

variable "ipv4_netmask_length" {
  description = "Netmask length to request from the IPv4 IPAM pool."
  type        = number
  default     = null
}

variable "assign_generated_ipv6_cidr_block" {
  description = "Whether to request an Amazon-provided IPv6 CIDR block."
  type        = bool
  default     = false
}

variable "ipv6_cidr_block" {
  description = "IPv6 CIDR block to associate with the VPC."
  type        = string
  default     = null
}

variable "ipv6_cidr_block_network_border_group" {
  description = "Set this to restrict the IPv6 CIDR block to a specific network border group."
  type        = string
  default     = null
}

variable "ipv6_ipam_pool_id" {
  description = "ID of an IPv6 IPAM pool to use when allocating the IPv6 CIDR block."
  type        = string
  default     = null
}

variable "ipv6_netmask_length" {
  description = "Netmask length to request from the IPv6 IPAM pool."
  type        = number
  default     = null
}

variable "instance_tenancy" {
  description = "Tenancy option for instances launched into the VPC (default or dedicated)."
  type        = string
  default     = "default"
}

variable "enable_dns_support" {
  description = "Enable DNS support for the VPC."
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames for instances launched into the VPC."
  type        = bool
  default     = false
}

variable "enable_network_address_usage_metrics" {
  description = "Enable network address usage metrics for VPC (used with IPAM)."
  type        = bool
  default     = false
}

variable "additional_ipv4_cidr_blocks" {
  description = "List of additional IPv4 CIDR blocks to associate with the VPC."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the VPC."
  type        = map(string)
  default     = {}
}