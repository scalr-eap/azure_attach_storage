variable "scalr_azurerm_subscription_id" {}

variable "scalr_azurerm_client_id" {}

variable "scalr_azurerm_client_secret" {}

variable "scalr_azurerm_tenant_id" {}

variable "storage_name" {
  description = "Name of the storage device"
 }

variable "rg_name" {}

variable "region" {}

variable "rg" {}

variable "size" {
 description = "Size of the disk"
 }

variable "serverid" {
 description = "Must be full path" 
  }
