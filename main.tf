module "vpc"{
    source = "/home/sid/project/terraform/Terraform-3Tier-Architecture/modules/vpc"
    project_name = var.project_name
    vpc_cidr = var.vpc_cidr
    public_subnets = var.public_subnet
    private_subnets = var.private_subnet
    azs_zones = var.azs_zones
}
module "compute" {
    source = "/home/sid/project/terraform/Terraform-3Tier-Architecture/modules/compute"
    project_name = var.project_name 
    public_subnet_ids = module.vpc.public_subnet_ids
    private_subnet_ids = module.vpc.private_subnet_ids
    vpc_id = module.vpc.vpc_id
    instance_type = var.instance_type
    ami_id = var.ami_id
}

module "storage" {
    source = "/home/sid/project/terraform/Terraform-3Tier-Architecture/modules/storage"
    project_name = var.project_name
    private_subnet_ids = module.vpc.private_subnet_ids
    vpc_id = module.vpc.vpc_id
    db_username = "admin"
    db_password = "passowrd"
}
