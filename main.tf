locals {
    production_availability_zones = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
}

module "Networking" {
    source = "./modules/Networking"
    region = var.AWS_REGION
    environment = var.environment
    vpc_cidr = var.vpc_cidr
    public_subnets_cidr = var.public_subnets_cidr
    private_subnets_cidr = var.private_subnets_cidr
    availability_zones = local.production_availability_zones
    
}