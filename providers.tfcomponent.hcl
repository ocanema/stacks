required_providers {
  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = "~> 2.30"
  }
}

provider "kubernetes" "k3d" {
  config {
    config_context = var.kube_context
    insecure = true
  }
}