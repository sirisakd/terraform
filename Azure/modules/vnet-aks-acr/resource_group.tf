resource "azurerm_resource_group" "TF-RG" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    company     = var.company
    environment = var.environment
    application = var.application
  }
}