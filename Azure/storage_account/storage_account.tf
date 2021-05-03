resource "azurerm_storage_account" "TF-STORAGE_ACCOUNT" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.TF-RG.name
  location                 = azurerm_resource_group.TF-RG.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}