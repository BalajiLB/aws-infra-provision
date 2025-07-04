output "instance_ids" {
    description = "The IDs of the EC2 instances created for the web tier"
    value       = aws_instance.web[*].id
}

output "public_ips" {
    description = "The public IP addresses of the web EC2 instances"
    value       = aws_instance.web[*].public_ip
}

output "private_ips" {
    description = "The private IP addresses of the web EC2 instances"
    value       = aws_instance.web[*].private_ip
}
