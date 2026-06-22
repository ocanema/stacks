output "namespace" {
  type        = string
  description = "Namespace where app is deployed."
  value       = component.webserver.namespace 
}

output "deployment_name" {
  type        = string
  description = "Deployment name."
  value       = component.webserver.deployment_name
}

output "service_name" {
  type        = string
  description = "Service name."
  value       = component.webserver.service_name
}

output "service_type" {
  type        = string
  description = "Service type."
  value       = component.webserver.service_type
}

output "service_port" {
  type        = number
  description = "Service port."
  value       = component.webserver.service_port
}

output "node_port" {
  type        = number
  description = "NodePort value, if service type is NodePort."
  value       = try(component.webserver.node_port, null)
}