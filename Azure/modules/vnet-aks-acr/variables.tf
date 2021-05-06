# Config
# ------
variable "company"                          { type = string }
variable "environment"                      { type = string }
variable "application"                      { type = string }

# Resource group configuration
# ----------------------------
variable "resource_group_name"              { type = string }
variable "resource_group_location"          {
    type    = string
    default = "West Europe"
}

# Azure AD AKS Admin Group
# ------------------------
variable "aks_group_name"                    { type = string }
variable "default_aks_admin_member_upn"      { type = string }

# VNET
# ----
variable "virtual_network_name"             { type = string }
variable "virtual_network_address_space"    { type = list(string) }

# SUBNET
# ------
variable "subnet_name"                      { type = string }
variable "subnet_address_prefixes"          { type = list(string) }

# Azure Container Regitry
# -----------------------
variable "container_registry_name"          { type = string }
variable "container_registry_sku"           { type = string }
variable "container_registry_admin"         { type = bool }

# Azure Managed Identity
# ----------------------
variable "user_assigned_identity_name"      { type = string }

# Azure Kubernetes Service
# -----------------------
variable "aks_name"                         { type = string }
variable "aks_group"                        { type = string }
variable "aks_default_pool_name"            { type = string }
variable "aks_default_node_count"           { type = number }
variable "aks_vm_size"                      { type = string }
variable "aks_service_cidr"                 { type = string }
variable "aks_dns_service_ip"               { type = string }
variable "aks_docker_bridge_cidr"           { type = string }
