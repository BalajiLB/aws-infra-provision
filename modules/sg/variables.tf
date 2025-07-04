variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "subnet_cidr_a" {
  description = "CIDR block for subnet A"
  type        = string
}

variable "subnet_cidr_b" {
  description = "CIDR block for subnet B"
  type        = string
}
