module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    name = "sysdig-dev-vpc"
    cidr = "10.0.0.0/16"
    azs = [data.aws_availability_zones.available.names[0], data.aws_availability_zones.available.names[1], data.aws_availability_zones.available.names[2]]
    private_subnets = ["10.0.64.0/24", "10.0.65.0/24", "10.0.66.0/24"]
    public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    database_subnets = ["10.0.192.0/24", "10.0.193.0/24", "10.0.194.0/24"]
    create_database_subnet_route_table = true
    enable_nat_gateway = false
    single_nat_gateway = false
    enable_vpn_gateway = false
    enable_dns_hostnames = true
    enable_dns_support = true
    enable_flow_log = false    
    tags = {
        Terraform = "true"
    }
}