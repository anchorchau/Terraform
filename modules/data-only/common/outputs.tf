locals {
    dir_to_list = split("/", var.dir_path)
    root_index = index(local.dir_to_list, var.root_dir)
    true_dirs_list = slice(local.dir_to_list, local.root_index, length(local.dir_to_list))

    stack = join(
      "/",
      slice(
        local.true_dirs_list,
        5,
        length(local.true_dirs_list)
      )
    )
}

output "environment" {
    value = local.true_dirs_list[2]
}

output "owner" {
    value = local.true_dirs_list[3]
}

output "region" {
    value = local.true_dirs_list[4]
}

output "stack" {
    value = local.stack
}

output "tags" {
  value = {
    Environment = local.true_dirs_list[2]
    Owner       = local.true_dirs_list[3]
    Region      = local.true_dirs_list[4]
    Stack       = local.stack
  }
}
