region              = "ap-southeast-1"
vpc_cidr            = "192.168.0.0/16"
public_subnet_cidr  = "192.168.1.0/24"
private_subnet_cidr = "192.168.6.0/24"
eip_addr            = "192.168.0.1"
vpc_name_map = {
    dev     = "Development-VPC"
    staging = "Staging-VPC"
    hotfix  = "Hotfix-VPC"
    prod    = "Production-VPC"
}

