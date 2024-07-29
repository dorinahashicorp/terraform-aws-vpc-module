variable "vpc_cidr_range" {
  description = "The CIDR block for the AWS VPC"
  type        = string
  default     = "10.0.0.0/16"  
}

variable "vpc_name" {
  description = "The name to be assigned to the VPC"
  type        = string
  default     = "core"  
}

variable "vpc_environment" {
  description = "The environment associated with the VPC"
  type        = string
  default     = "test"  
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