resource "azurerm_resource_group" "TF-RG" {
  name     = var.resource_group_name
  location = "West Europe"
}