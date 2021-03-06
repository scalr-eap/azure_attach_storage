provider "azurerm" {
features {}
}

resource "azurerm_managed_disk" "test" {
  name                 = var.storage_name
  location             = var.region
  resource_group_name  = var.rg
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = var.size
}

resource "azurerm_virtual_machine_data_disk_attachment" "test" {
  managed_disk_id    = "${azurerm_managed_disk.test.id}"
  virtual_machine_id = var.serverid
  lun                = "1"
  caching            = "ReadWrite"
}
