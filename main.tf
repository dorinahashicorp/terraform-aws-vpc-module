terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version =  ">= 1.1.0"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_range
  instance_tenancy = var.vpc_instance_tenancy
  enable_dns_support = true  # globally enforced across the organisation
  enable_dns_hostnames  = true # globally enforced across the organisation
  

# Associate relevant tags for the VPC
tags = {
    Name = var.vpc_name
    Environment = var.vpc_environment
    BusinessUnit = var.vpc_business_unit
}
}