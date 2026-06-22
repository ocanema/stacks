deployment "dev" {
  inputs = {
    environment_name = "dev"
  }
}

deployment "test" {
  inputs = {
    environment_name = "test"
  }
}

deployment "prod" {
  inputs = {
    environment_name = "prod"
  } 
}