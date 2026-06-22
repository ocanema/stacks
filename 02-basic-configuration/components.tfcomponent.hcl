required_providers {
  time = {
    source  = "hashicorp/time"
    version = "~> 0.13.1"
  }
}

provider "time" "this" {}

component "manifest" {
  source = "./modules/manifest-module"

  inputs = {
    parent_directory = var.parent_directory
    environment_name = var.environment_name
  }

  providers = {
    time = provider.time.this
  }
}