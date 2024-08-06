# aws-vpc-module

This terraform module deploys a VPC as well as a Public and Private Subnet. Their IDs will be provided as an output, so they can be reused in other parts of the infrastructure stack.

Where default values are not provided for the terraform variables, the end user must input parameters for the required variables. 

# Required providers

This requires AWS provider 5.0 or newer.
