output "subnet_ids" {
  description = "List of all subnet IDs"
  value       = [for s in aws_subnet.this : s.id]
}

output "subnet_arns" {
  description = "List of all subnet ARNs"
  value       = [for s in aws_subnet.this : s.arn]
}

output "subnets" {
  description = "Full map of aws_subnet resources"
  value       = aws_subnet.this
}