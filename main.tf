# Create a VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_range
  instance_tenancy     = var.vpc_instance_tenancy
  enable_dns_support   = true # globally enforced across the organisation
  enable_dns_hostnames = true # globally enforced across the organisation


  # Associate relevant tags for the VPC
  tags = local.mandatory_tags
}

locals {
  mandatory_tags = merge({
    Name         = var.vpc_name
    Environment  = var.vpc_environment
    BusinessUnit = var.vpc_business_unit
  })
}

# Create the public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true # instances launched into this subnet will be assigned a public IP address

  # Associate relevant tags for the Public Subnet
  tags = local.mandatory_tags
}

# Create the private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr

  # Associate relevant tags for the Private Subnet. 
  # For simplicity, here, the VPC, Public and Private Subnets share the same tags, but resource specific tags can also be added.
  tags = local.mandatory_tags
}
