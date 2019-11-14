variable "scalr_azurerm_subscription_id" {}

variable "scalr_azurerm_client_id" {}

variable "scalr_azurerm_client_secret" {}

variable "scalr_azurerm_tenant_id" {}

variable "storage_name" {
 description = "Name of the storage device"
}

variable "region" {}

variable "rg" {
 description = "Resource Group Name"
}

variable "size" {
 description = "Size of the disk"
}

variable "serverid" {
 description = "Must be full path" 
}
