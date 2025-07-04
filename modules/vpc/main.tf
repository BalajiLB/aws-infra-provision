resource "aws_vpc" "demovpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.public_subnet_a_cidr
  availability_zone       = "${var.aws_region}a"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-public-a"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = var.public_subnet_b_cidr
  availability_zone       = "${var.aws_region}b"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-public-b"
  }
}

