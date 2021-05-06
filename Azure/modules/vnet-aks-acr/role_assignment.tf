# Get ManagedIdentity Name
# data "azurerm_resources" "identity_name" {
#   resource_group_name = format("%s%s_%s", var.company, var.aks_name, var.aks_group)
#   type                = "Microsoft.ManagedIdentity/userAssignedIdentities"

#   depends_on = [
#       azurerm_kubernetes_cluster.TF-AKS
#   ]
# }

# Get Pricipal ID from Manaaged Identity name
data "azurerm_user_assigned_identity" "identity_id" {
  # name                = data.azurerm_resources.identity_name.resources[0].name
  name                = format("%s%s-agentpool", var.company, var.aks_name)
  resource_group_name = format("%s%s_%s", var.company, var.aks_name, var.aks_group)

  depends_on = [
      azurerm_kubernetes_cluster.TF-AKS
  ]
}

resource "azurerm_role_assignment" "TF-ROLE" {
  scope                = azurerm_container_registry.TF-ACR.id
  role_definition_name = "AcrPull"
  principal_id         = data.azurerm_user_assigned_identity.identity_id.principal_id
}