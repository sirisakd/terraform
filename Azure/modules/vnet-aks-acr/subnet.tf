resource "azurerm_subnet" "TF-SUBNET" {
  name                 = format("%s-%s", azurerm_virtual_network.TF-VNET.name , var.subnet_name)
  resource_group_name  = azurerm_resource_group.TF-RG.name
  virtual_network_name = azurerm_virtual_network.TF-VNET.name
  address_prefixes     = var.subnet_address_prefixes
}