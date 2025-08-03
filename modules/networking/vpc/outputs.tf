output "vpc_resource" {
  description = "The complete aws_vpc resource object, including all attributes (ID, ARN, CIDR, etc)."
  value       = aws_vpc.this
}