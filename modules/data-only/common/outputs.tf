locals {
    dir_to_list = reverse(split("/", var.dir_path))
}

output "stack" {
    value = local.dir_to_list[0]
}

output "region" {
    value = local.dir_to_list[1]
}

output "owner" {
    value = local.dir_to_list[2]
}

output "environment" {
    value = local.dir_to_list[3]
}

output "tags" {
  value = {
    Stack       = local.dir_to_list[0]
    Region      = local.dir_to_list[1]
    Owner       = local.dir_to_list[2]
    Environment = local.dir_to_list[3]
  }
}
