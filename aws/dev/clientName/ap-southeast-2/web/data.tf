module "common_data" {
    source = "../../../../../modules/data-only/common"
    dir_path = path.cwd
}

module "aws_data" {
    # Unfortunately, we can't pass variable into source.
    source = "../../../../../modules/data-only/aws/dev"

    default_tags = module.common_data.tags
}
