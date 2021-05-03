
resource "azurerm_kubernetes_cluster" "TF-AKS" {
  name                = var.kubernetes_cluster_name
  location            = azurerm_resource_group.TF-RG.location
  resource_group_name = azurerm_resource_group.TF-RG.name
  dns_prefix          = "demo-aks01"
  node_resource_group = var.kubernetes_cluster_group

  default_node_pool {
    name            = "pool01"
    node_count      = 1
    vm_size         = "Standard_D2_v2"
    vnet_subnet_id  = azurerm_subnet.TF-SUBNET.id
  }

  identity {
    type = "UserAssigned"
    user_assigned_identity_id = azurerm_user_assigned_identity.TF-USER-IDENTITY.id
  }

  network_profile {
    network_plugin      = "azure"
    service_cidr        = var.kubernetes_cluster_service_cidr
    dns_service_ip      = var.kubernetes_cluster_dns_service_ip
    docker_bridge_cidr  = var.kubernetes_cluster_docker_bridge_cidr
  }

  role_based_access_control {
    enabled = true
    
    azure_active_directory {
      managed                 = true
      azure_rbac_enabled      = true
      admin_group_object_ids  = [azuread_group.TF-GROUP.id]
    }
  }

  tags = {
    application = "Kubernetes"
    environment = "DEMO"
  }
}