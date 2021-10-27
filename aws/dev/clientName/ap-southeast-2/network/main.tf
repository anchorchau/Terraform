module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${module.common_data.owner}-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["${module.common_data.region}a", "${module.common_data.region}b", "${module.common_data.region}c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false
}
