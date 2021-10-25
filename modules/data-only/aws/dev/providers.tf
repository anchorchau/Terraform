# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }

provider "aws" {
  region                  = "ap-southeast-2"
  shared_credentials_file = "~/.aws/personal-cred"

  default_tags {
    tags = var.default_tags
  }
}
