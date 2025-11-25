module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source     = "./modules/security_groups"
  vpc_id     = module.vpc.vpc_id
}

module "ec2_instance" {
  source           = "./modules/ec2"
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  subnet_id        = module.vpc.public_subnet_id
  security_group_id = module.security_group.sg_id
}