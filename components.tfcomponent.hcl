required_providers {
  kubernetes = {
    source  = "hashicorp/kubernetes"
    version = "~> 2.30"
  }
}

provider "kubernetes" "k3d" {
}

component "webserver" {
  source = "./modules/webserver"

  inputs = {
    environment    = var.environment
    app_name       = var.app_name
    namespace      = var.namespace
    image          = var.image
    replicas       = var.replicas
    container_port = var.container_port
    service_port   = var.service_port
    service_type   = var.service_type
    kube_context   = var.kube_context
  }

  providers = {
    kubernetes = provider.kubernetes.k3d
  }
}