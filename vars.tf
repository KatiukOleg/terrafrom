variable "AWS_REGION" {
    description = "Default AWS region for provisioning resources"
    default = "eu-north-1"
}

variable "environment" {
    description = "AWS Environment"
    default = "DEV"
}

variable "vpc_cidr" {
    description = "CIDR block of the VPC"
}

variable "public_subnets_cidr" {
    type = list(any)
    description = "CIDR block for Public Subnets"
}

variable "private_subnets_cidr" {
    type = list(any)
    description = "CIDR block for Private Subnets"
}

variable "availability_zones" {
    type = list(any)
    description = "Availabilty zones in AWS Region"
}