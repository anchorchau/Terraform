module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"

  name   = "chau-vpc"
  cidr   = "10.88.0.0/16"

  azs              = ["${module.common_data.region}a", "${module.common_data.region}b", "${module.common_data.region}c"]
  public_subnets   = ["10.88.1.0/24", "10.88.2.0/24", "10.88.3.0/24"]
  private_subnets  = ["10.88.11.0/24", "10.88.12.0/24", "10.88.13.0/24"]
  database_subnets = ["10.88.21.0/24", "10.88.22.0/24", "10.88.23.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false
}
