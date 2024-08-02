# aws-vpc-module

This terraform module deploys a VPC as well as a Public and Private Subnet. Their IDs will be provided as an output, so they can be reused in other parts of the infrastructure stack.

Default values are provided for the terraform variables, so the code can be executed as is for demonstration purposes (and assuming no conflicts with existing infrastructure), but custom input variables should be provided as needed. 

# Required providers

This requires Terraform version 1.1.0 or newer and AWS provider 5.0 or newer.
