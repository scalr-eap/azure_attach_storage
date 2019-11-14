provider "azurerm" {
    subscription_id = var.scalr_azurerm_subscription_id
    client_id = var.scalr_azurerm_client_id
    client_secret = var.scalr_azurerm_client_secret
    tenant_id = var.scalr_azurerm_tenant_id
}

resource "azure_data_disk" "data" {
  lun                  = 0
  size                 = 1
  storage_service_name = "azurestorage2"
  virtual_machine      = "azurestorage2"
}
