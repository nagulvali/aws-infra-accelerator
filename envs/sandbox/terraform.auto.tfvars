region = "ap-south-1"

tags = {
  Environment = "dev"
  Project     = "aws-infra-accelerator"
  Owner       = "team-platform"
}

vpc_cidr_block = "10.10.0.0/16"

subnets = [
  # Public subnets
  {
    name                    = "public-a"
    cidr_block              = "10.10.1.0/24"
    availability_zone       = "ap-south-1a"
    map_public_ip_on_launch = true
    tags = {
      Tier = "public"
    }
  },
  {
    name                    = "public-b"
    cidr_block              = "10.10.2.0/24"
    availability_zone       = "ap-south-1b"
    map_public_ip_on_launch = true
    tags = {
      Tier = "public"
    }
  },
  {
    name                    = "public-c"
    cidr_block              = "10.10.3.0/24"
    availability_zone       = "ap-south-1c"
    map_public_ip_on_launch = true
    tags = {
      Tier = "public"
    }
  },

  # Private subnets
  {
    name                                = "private-a"
    cidr_block                          = "10.10.101.0/24"
    availability_zone                   = "ap-south-1a"
    map_public_ip_on_launch             = false
    ipv6_native                         = false
    assign_ipv6_address_on_creation     = false
    private_dns_hostname_type_on_launch = "ip-name"
    tags = {
      Tier = "private"
    }
  },
  {
    name                                = "private-b"
    cidr_block                          = "10.10.102.0/24"
    availability_zone                   = "ap-south-1b"
    map_public_ip_on_launch             = false
    ipv6_native                         = false
    assign_ipv6_address_on_creation     = false
    private_dns_hostname_type_on_launch = "ip-name"
    tags = {
      Tier = "private"
    }
  },
  {
    name                                = "private-c"
    cidr_block                          = "10.10.103.0/24"
    availability_zone                   = "ap-south-1c"
    map_public_ip_on_launch             = false
    ipv6_native                         = false
    assign_ipv6_address_on_creation     = false
    private_dns_hostname_type_on_launch = "ip-name"
    tags = {
      Tier = "private"
    }
  },

  # DB subnets
  {
    name                                = "db-a"
    cidr_block                          = "10.10.201.0/24"
    availability_zone                   = "ap-south-1a"
    map_public_ip_on_launch             = false
    ipv6_native                         = false
    assign_ipv6_address_on_creation     = false
    private_dns_hostname_type_on_launch = "ip-name"
    tags = {
      Tier = "db"
    }
  },
  {
    name                                = "db-b"
    cidr_block                          = "10.10.202.0/24"
    availability_zone                   = "ap-south-1b"
    map_public_ip_on_launch             = false
    ipv6_native                         = false
    assign_ipv6_address_on_creation     = false
    private_dns_hostname_type_on_launch = "ip-name"
    tags = {
      Tier = "db"
    }
  },
  {
    name                                = "db-c"
    cidr_block                          = "10.10.203.0/24"
    availability_zone                   = "ap-south-1c"
    map_public_ip_on_launch             = false
    ipv6_native                         = false
    assign_ipv6_address_on_creation     = false
    private_dns_hostname_type_on_launch = "ip-name"
    tags = {
      Tier = "db"
    }
  }
]