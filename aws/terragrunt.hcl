remote_state {
  backend = "s3"
  config = {
    profile        = "soulmachines-legacy"
    session_name   = "chau-learning-terraform"
    bucket         = "chau-tfstate-bucket"
    key            = "${path_relative_to_include()}.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
  }
}
