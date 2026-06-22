resource "random_pet" "pet" {
  count  = var.pet_count
  length = 3
}
