resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Allow HTTP traffic from public subnets"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow HTTP from subnet A"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.subnet_cidr_a]
  }

  ingress {
    description = "Allow HTTP from subnet B"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.subnet_cidr_b]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
