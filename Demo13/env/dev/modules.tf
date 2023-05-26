module "instance" {
    source   = "../../modules/instance"
    ec2_name = "modules-instance"
    env = local.enviroment
    subnet_id = module.network.subnet_id
}

module "network" {
    source = "../../modules/network"
    subnet_name = "module-subnet"
    vpc_name = "module-vpc"
    env = local.enviroment
}