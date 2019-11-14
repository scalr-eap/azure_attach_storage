provider "azurerm" {
    subscription_id = var.scalr_azurerm_subscription_id
    client_id = var.scalr_azurerm_client_id
    client_secret = var.scalr_azurerm_client_secret
    tenant_id = var.scalr_azurerm_tenant_id
}

resource "azurerm_managed_disk" "test" {
  name                 = "azurestorage2"
  location             = "East US"
  resource_group_name  = "scalr-demo"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 1
}

resource "azurerm_virtual_machine_data_disk_attachment" "test" {
  managed_disk_id    = "${azurerm_managed_disk.test.id}"
  virtual_machine_id = "azurestorage2"
  lun                = "1"
  caching            = "ReadWrite"
}