variable "resource_group_name" {
  type    = string
  default = "RG-DEMO"
}

variable "virtual_network_name" {
  type    = string
  default = "VNET-DEMO"
}

variable "virtual_network_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type    = string
  default = "SUBNET-DEMO"
}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.0.0/24"]
}
