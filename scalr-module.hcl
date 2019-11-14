version = "v1"

variable "rg" {
global_variable = "azure_resource_group"
}

variable "region" {
  policy = "cloud.locations"
  conditions = {
  cloud = "azure"
  }
}

