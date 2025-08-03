<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_subnet.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnets"></a> [subnets](#input\_subnets) | List of subnet configurations | <pre>list(object({<br/>    name                                           = string<br/>    cidr_block                                     = string<br/>    availability_zone                              = optional(string)<br/>    availability_zone_id                           = optional(string)<br/>    ipv6_cidr_block                                = optional(string)<br/>    ipv6_native                                    = optional(bool)<br/>    assign_ipv6_address_on_creation                = optional(bool)<br/>    map_public_ip_on_launch                        = optional(bool)<br/>    enable_dns64                                   = optional(bool)<br/>    enable_lni_at_device_index                     = optional(number)<br/>    enable_resource_name_dns_a_record_on_launch    = optional(bool)<br/>    enable_resource_name_dns_aaaa_record_on_launch = optional(bool)<br/>    customer_owned_ipv4_pool                       = optional(string)<br/>    outpost_arn                                    = optional(string)<br/>    map_customer_owned_ip_on_launch                = optional(bool)<br/>    private_dns_hostname_type_on_launch            = optional(string)<br/>    tags                                           = optional(map(string), {})<br/>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Common tags applied to all subnets | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID to associate subnets with | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_arns"></a> [subnet\_arns](#output\_subnet\_arns) | List of all subnet ARNs |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | List of all subnet IDs |
| <a name="output_subnets"></a> [subnets](#output\_subnets) | Full map of aws\_subnet resources |
<!-- END_TF_DOCS -->