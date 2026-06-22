output "manifest_filename" {
  description = "Manifest filename"
  value       = component.manifest.manifest_filename
  type        = string
}

output "manifest_contents" {
  description = "Contents of manifest file"
  value       = component.manifest.manifest_contents
  type        = string
}

output "simulated_filesystem" {
  description = "What the filesystem would look like"
  value       = concat([component.manifest.manifest_filename])
  type        = list(string)
}