variable "vpc_cidr_range" {
  description = "The CIDR block for the AWS VPC"
  type        = string
  default     = "10.0.0.0/16"  
}

variable "vpc_name" {
  description = "The name to be assigned to the VPC"
  type        = string
  default     = "Core"  
}

variable "vpc_environment" {
  description = "The environment associated with the VPC"
  type        = string
  default     = "Test"  
}

variable "vpc_business_unit" {
  description = "The business unit associated with the VPC. Used for Cost allocation."
  type        = string
  default     = "SE"
}

variable "vpc_instance_tenancy" {
  description = "The instance tenancy attribute of the VPC for launched EC2 instances."
  type        = string
  default     = "default"

  validation {
    condition     = contains(["default", "dedicated"], var.vpc_instance_tenancy)
    error_message = "The vpc_instance_tenancy variable must be either 'default' or 'dedicated'. See provider docs for details."
  }
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.4.0/24"
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  type        = string
  default     = "Public Subnet"  
}

variable "project_name" {
  description = "The name of the project the subnet is associated with"
  type        = string
  default     = "Demo Project"  
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  type        = string
  default     = "Private Subnet"  
}
