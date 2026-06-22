deployment "dev" {
  inputs = {
    environment    = "dev"
    app_name       = "hello-app"
    namespace      = "hello-dev-stack"
    image          = "nginx:1.27"
    replicas       = 1
    container_port = 80
    service_port   = 80
    service_type   = "ClusterIP"
    kube_context   = "k3d-terraform"
  }
}

deployment "stage" {
  inputs = {
    environment    = "stage"
    app_name       = "hello-app"
    namespace      = "hello-stage-stack"
    image          = "nginx:1.27"
    replicas       = 1
    container_port = 80
    service_port   = 80
    service_type   = "ClusterIP"
    kube_context   = "k3d-terraform"
  }
}

deployment "prod" {
  inputs = {
    environment    = "prod"
    app_name       = "hello-app"
    namespace      = "hello-prod-stack"
    image          = "nginx:1.27"
    replicas       = 1
    container_port = 80
    service_port   = 80
    service_type   = "ClusterIP"
    kube_context   = "k3d-terraform"
  }
}