resource "azurerm_container_registry" "TF-ACR" {
  name                     = var.container_registry_name
  resource_group_name      = azurerm_resource_group.TF-RG.name
  location                 = azurerm_resource_group.TF-RG.location
  sku                      = "Basic"
  admin_enabled            = false
}