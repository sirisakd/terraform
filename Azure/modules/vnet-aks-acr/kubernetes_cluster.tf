
resource "azurerm_kubernetes_cluster" "TF-AKS" {
  name                = format("%s%s", var.company, var.aks_name)
  location            = azurerm_resource_group.TF-RG.location
  resource_group_name = azurerm_resource_group.TF-RG.name
  dns_prefix          = "demo-aks01"
  node_resource_group = format("%s%s_%s", var.company, var.aks_name, var.aks_group)

  default_node_pool {
    name            = var.aks_default_pool_name
    node_count      = var.aks_default_node_count
    vm_size         = var.aks_vm_size
    vnet_subnet_id  = azurerm_subnet.TF-SUBNET.id
  }

  identity {
    type = "UserAssigned"
    user_assigned_identity_id = azurerm_user_assigned_identity.TF-USER-IDENTITY.id
  }

  network_profile {
    network_plugin      = "azure"
    service_cidr        = var.aks_service_cidr
    dns_service_ip      = var.aks_dns_service_ip
    docker_bridge_cidr  = var.aks_docker_bridge_cidr
  }

  role_based_access_control {
    enabled = true
    
    azure_active_directory {
      managed                 = true
      azure_rbac_enabled      = true
      admin_group_object_ids  = [azuread_group.TF-AKS-GROUP.id]
    }
  }

  tags = {
    company     = var.company
    environment = var.environment
    application = var.application
  }
}