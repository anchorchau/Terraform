module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.10.0"

  bucket = "chau-tfstate-bucket"

  server_side_encryption_configuration = {
    rule = {
      bucket_key_enabled = true
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning = {
    enabled = true
  }

  object_lock_configuration = {
    object_lock_enabled = "Enabled"
    rule = {
      default_retention = {
        mode = "GOVERNANCE"
        days = 1
      }
    }
  }

  lifecycle_rule = [
    {
      id      = "default"
      enabled = true

      noncurrent_version_transition = [
        {
          days = 30
          storage_class = "ONEZONE_IA"
        },
      ]

      noncurrent_version_expiration = {
        days = 60
      }
    }
  ]

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
