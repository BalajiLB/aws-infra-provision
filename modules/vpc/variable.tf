variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "public_subnet_a_cidr" {
  type        = string
  description = "Public subnet A CIDR block"
}

variable "public_subnet_b_cidr" {
  type        = string
  description = "Public subnet B CIDR block"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "aws_region" {
  type        = string
}
