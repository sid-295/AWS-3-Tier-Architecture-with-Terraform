variable "project_name" {type = string}
variable "public_subnet_ids" {type = list(string)}
variable "private_subnet_ids" {type = list(string)}
variable "vpc_id" {type = string}
variable "instance_type" {type = string}
variable "ami_id" {type = string}

