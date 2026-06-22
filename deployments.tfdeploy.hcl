deployment "dev" {
  inputs = {
    environment_name = "dev"
    parent_directory = "non_default_directory"
  }
  destroy = true`
}
deployment "test" {
  inputs = {
    environment_name = "test"
    pet_count        = 2
  }
  destroy = true
}

deployment "prod" {
  inputs = {
    environment_name = "prod"
    pet_count        = 3
  }
  destroy = true
}