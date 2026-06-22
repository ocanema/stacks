deployment "dev" {
  inputs = {
    environment_name = "dev"
  }
}

deployment "test" {
  inputs = {
    environment_name = "test"
    pet_count        = 4
  }
}

deployment "prod" {
  inputs = {
    environment_name = "prod"
    pet_count        = 2
  }
}