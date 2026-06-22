output "manifest_timestamp" {
  description = "Manifest timestamp"
  value       = time_static.static_timestamp.rfc3339
}

output "manifest_filename" {
  description = "Filename of manifest file"
  value       = "${var.parent_directory}/${var.environment_name}/manifest.txt"
}

output "manifest_contents" {
  description = "Contents of manifest file"
  value = "Manifest file for ${var.environment_name} originally created by Terraform Stacks Tutorial at ${time_static.static_timestamp.rfc3339}:  manifest.txt plus ${length(var.additional_files)} additional files"
}