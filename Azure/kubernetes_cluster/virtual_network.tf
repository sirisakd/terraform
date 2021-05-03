resource "azurerm_virtual_network" "TF-VNET" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.TF-RG.location
  resource_group_name = azurerm_resource_group.TF-RG.name
  address_space       = var.virtual_network_address_space

  tags = {
    environment = "DEMO"
    application = "AKS"
  }
}