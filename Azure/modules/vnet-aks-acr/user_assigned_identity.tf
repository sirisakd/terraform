resource "azurerm_user_assigned_identity" "TF-USER-IDENTITY" {
  resource_group_name = azurerm_resource_group.TF-RG.name
  location            = azurerm_resource_group.TF-RG.location

  name = format("%s%s%s", var.company, var.aks_name, var.user_assigned_identity_name)

  tags = {
    company     = var.company
    environment = var.environment
    application = var.application
  }
}