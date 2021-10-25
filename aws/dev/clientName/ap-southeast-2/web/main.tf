provider "aws" {
  region                  = "ap-southeast-2"
  shared_credentials_file = "~/.aws/personal-cred"

  default_tags {
    tags = module.common_data.tags
  }
}

data "aws_caller_identity" "current" {}
