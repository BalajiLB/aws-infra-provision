output "vpc_id" {
  description = "The ID of the created VPC."
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = [module.vpc.public_subnet_a_id, module.vpc.public_subnet_b_id]
}

output "ec2_instance_ids" {
  description = "IDs of the EC2 instances."
  value       = module.ec2.instance_ids
}

output "s3_bucket_id" {
  description = "ID of the S3 bucket."
  value       = module.s3.bucket_id
}
