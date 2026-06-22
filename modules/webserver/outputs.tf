output "namespace" {
  description = "Namespace where app is deployed."
  value       = kubernetes_namespace_v1.app.metadata[0].name
}

output "deployment_name" {
  description = "Deployment name."
  value       = kubernetes_deployment_v1.app.metadata[0].name
}

output "service_name" {
  description = "Service name."
  value       = kubernetes_service_v1.app.metadata[0].name
}

output "service_type" {
  description = "Service type."
  value       = kubernetes_service_v1.app.spec[0].type
}

output "service_port" {
  description = "Service port."
  value       = kubernetes_service_v1.app.spec[0].port[0].port
}

output "node_port" {
  description = "NodePort value, if service type is NodePort."
  value       = try(kubernetes_service_v1.app.spec[0].port[0].node_port, null)
}
