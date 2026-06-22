deployment "dev" {
  inputs = {
    environment_name = "dev"
  }

  destroy = true
}

deployment "test" {
  inputs = {
    environment_name = "test"
    pet_count        = 4
  }

  destroy = true
}

deployment "prod" {
  inputs = {
    environment_name = "prod"
    pet_count        = 2
    parent_directory = "non_default_directory"
  }

  destroy = true
}