provider "aws" {
  region = var.aws_region
  # credentials — they come from the environment (STS AssumeRole)

}

module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_a_cidr = var.public_subnet_a_cidr
  public_subnet_b_cidr = var.public_subnet_b_cidr
  aws_region           = var.aws_region
}

module "sg" {
  source         = "./modules/sg"
  vpc_id         = module.vpc.vpc_id
  subnet_cidr_a  = var.public_subnet_a_cidr
  subnet_cidr_b  = var.public_subnet_b_cidr
}


module "ec2" {
  source         = "./modules/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id_a    = module.vpc.public_subnet_a_id
  subnet_id_b    = module.vpc.public_subnet_b_id
  security_group = module.sg.security_group_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}
