module "common_data" {
    source = "../../../../../modules/data-only/aws"
    dir_path = path.cwd
}

provider "aws" {
    region                  = module.common_data.region
    profile                 = "soulmachines-legacy"
  # shared_credentials_file = "~/.aws/personal-cred"

  default_tags {
    tags = module.common_data.tags
  }
}

terraform {
  backend "s3" {}
}
