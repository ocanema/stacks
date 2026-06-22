output "pet_names" {
  description = "Names of pets created"
  value       = random_pet.pet[*].id
}

output "pet_filenames" {
  description = "Names of pet files created that would be created in the pets directory"
  value       = [for p in random_pet.pet : "${var.parent_directory}/${var.environment_name}/pets/${p.id}"]
}