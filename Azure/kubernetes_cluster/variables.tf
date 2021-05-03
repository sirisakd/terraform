# resource_group_name         = "RG-DEMO"
# user_assigned_identity_name = "user-assigned-identity-demo"
# virtual_network_name        = "DEMOVNET00"
# subnet_name                 = "subnet00"
# kubernetes_cluster_name     = "DEMOAKS00"
# kubernetes_cluster_group    = "DEMOAKS00_MC"

variable "group_name" {
  type    = string
  default = "DEMO-AKS-GROUP"
}

variable "resource_group_name" {
  type    = string
  default = "RG-DEMO"
}

variable "user_assigned_identity_name" {
  type    = string
  default = "user-assigned-identity-demo"
}

variable "virtual_network_name" {
  type    = string
  default = "DEMOVNET00"
}

variable "virtual_network_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type    = string
  default = "subnet00"
}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.0.0/24"]
}

variable "kubernetes_cluster_name" {
  type    = string
  default = "DEMOAKS00"
}

variable "kubernetes_cluster_group" {
  type    = string
  default = "DEMOAKS00_MC"
}

variable "kubernetes_cluster_service_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "kubernetes_cluster_docker_bridge_cidr" {
  type    = string
  default = "172.17.0.1/24"
}

variable "kubernetes_cluster_dns_service_ip" {
  type    = string
  default = "10.0.1.4"
}

