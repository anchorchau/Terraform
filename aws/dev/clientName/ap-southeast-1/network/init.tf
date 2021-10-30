module "common_data" {
    source = "../../../../../modules/data-only/common"
    dir_path = path.cwd
}

module "aws_data" {
    # Unfortunately, we can't pass variable into source.
    source = "../../../../../modules/data-only/aws/dev"
}

provider "aws" {
    region                  = module.common_data.region
    profile                 = "soulmachines-legacy"
  # shared_credentials_file = "~/.aws/personal-cred"

  default_tags {
    tags = module.common_data.tags
  }
}

# terraform {
#   backend "s3" {
#     profile        = "soulmachines-legacy"
#     session_name   = "chau-learning-terraform"
#     bucket         = "chau-tfstate-bucket"
#     key            = "${module.common_data.backend_key_path}.tfstate"
#     region         = "ap-southeast-1"
#     encrypt        = true
#   }
# }
