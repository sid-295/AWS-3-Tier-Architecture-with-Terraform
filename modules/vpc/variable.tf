variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "azs_zones" {
  description = "List of availability zones to use"
  type        = list(string)
}
variable "project_name" {
    description = "project_name"
    type = string
  
}

