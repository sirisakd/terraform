resource "azurerm_virtual_network" "TF-VNET" {
  name                = format("%s%s", var.company, var.virtual_network_name)
  location            = azurerm_resource_group.TF-RG.location
  resource_group_name = azurerm_resource_group.TF-RG.name
  address_space       = var.virtual_network_address_space

  tags = {
    company     = var.company
    environment = var.environment
    application = var.application
  }
}