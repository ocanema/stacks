variable "parent_directory" {
  description = "Parent directory environment directories are placed within"
  type        = string
  default     = "stacks_tutorial"
}

variable "environment_name" {
  description = "Environment to deploy into"
  type        = string
  default     = "DEFAULT_TARGET"
}

variable "pet_count" {
  description = "Number of pets to create"
  type        = number
  default     = 1
}