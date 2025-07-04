variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string
}

variable "instance_type" {
    description = "The type of EC2 instance to launch"
    type        = string
    default     = "t3.micro"
}

variable "subnet_id_a" {
    description = "The ID of subnet A"
    type        = string
}

variable "subnet_id_b" {
    description = "The ID of subnet B"
    type        = string
}

variable "security_group" {
    description = "The security group ID to associate with the EC2 instance"
    type        = string
}