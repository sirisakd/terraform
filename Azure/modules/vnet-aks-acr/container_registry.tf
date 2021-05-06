resource "azurerm_container_registry" "TF-ACR" {
  name                     = format("%s%s", var.company, var.container_registry_name)
  resource_group_name      = azurerm_resource_group.TF-RG.name
  location                 = azurerm_resource_group.TF-RG.location
  sku                      = var.container_registry_sku
  admin_enabled            = var.container_registry_admin

  tags = {
    company     = var.company
    environment = var.environment
    application = var.application
  }
}