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
  shared_credentials_file = "~/.aws/personal-cred"

  default_tags {
    tags = module.common_data.tags
  }
}
