variable "aws_region" {
    description = "AWS Region To Deploy Resource "
    type = string
    default = "us-east-1"  
}

variable "project_name" {
    description = "Project name"
    type = string
    default = "three-tier-app" 
}

variable "vpc_cidr" {
    description = "CIDR Block For VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet" {
    description = "List of Public Subent CIDR"
    type = list(string)
    default = [ "10.0.1.0/24","10.0.2.0/24" ] 
}

variable "private_subnet" {
    description = "List of Private Subnet CIDR"
    type = list(string)
    default = [ "10.0.3.0/24","10.0.4.0/24" ]  
}

variable "azs_zones" {
    description = "List of AZ"
    type = list(string)
    default = [ "us-east-1a", "us-east-1b" ]
  
}

variable "instance_type" {
    description = "Instance Type"
    type = string
    default = "t2.micro"
}
variable "ami_id" {
    description = "AMI ID"
    type = string
    default = "ami-0c02fb55956c7d316"  
}