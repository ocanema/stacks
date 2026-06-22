variable "environment" {
  description = "Environment name (dev, test, prod)."
  type        = string
}

variable "app_name" {
  description = "Kubernetes app/deployment name."
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace where resources are created."
  type        = string
}

variable "image" {
  description = "Container image to deploy."
  type        = string
}

variable "replicas" {
  description = "Number of pod replicas."
  type        = number
}

variable "container_port" {
  description = "Container port exposed by the app."
  type        = number
  default     = 80
}

variable "service_port" {
  description = "Service port exposed inside cluster (and externally for NodePort)."
  type        = number
  default     = 80
}

variable "service_type" {
  description = "Kubernetes service type. Use NodePort for local cluster access."
  type        = string
  default     = "ClusterIP"

  validation {
    condition     = contains(["ClusterIP", "NodePort", "LoadBalancer"], var.service_type)
    error_message = "service_type must be one of: ClusterIP, NodePort, LoadBalancer."
  }
}

variable "node_port" {
  description = "NodePort value (30000-32767). Used only when service_type is NodePort."
  type        = number
  default     = 30080

  validation {
    condition     = var.node_port >= 30000 && var.node_port <= 32767
    error_message = "node_port must be in range 30000-32767."
  }
}

variable "cpu_request" {
  description = "Container CPU request."
  type        = string
  default     = "100m"
}

variable "memory_request" {
  description = "Container memory request."
  type        = string
  default     = "128Mi"
}

variable "cpu_limit" {
  description = "Container CPU limit."
  type        = string
  default     = "250m"
}

variable "memory_limit" {
  description = "Container memory limit."
  type        = string
  default     = "256Mi"
}

#variable "kubeconfig_path" {
#  description = "Path to kubeconfig file used by Terraform Kubernetes provider."
#  type        = string
#  default     = "~/.kube/config"
#}

variable "kube_context" {
  description = "Kubernetes context name from kubeconfig (example: minikube, kind-kind, docker-desktop)."
  type        = string
}
