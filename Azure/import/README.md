# Terraform Import

## Providers

- azurerm

## Components to be imported

- Resource Group
- Virtual Network

## Commands

* Import Resource Group
```sh
terraform import azurerm_resource_group.TF-RG $(az group show -g $TF_RESOURCE_GROUP_NAME --query id -o tsv)
```

* Import Virtual Nework
```sh
terraform import azurerm_virtual_network.TF-VNET $(az network vnet show -g $TF_RESOURCE_GROUP_NAME -n $TF_VIRTUAL_NETWORK_NAME --query id -o tsv)
```

* Import Subnet
```sh
terraform import  azurerm_subnet.TF-SUBNET $(az network vnet subnet show -g $TF_RESOURCE_GROUP_NAME --vnet-name $TF_VIRTUAL_NETWORK_NAME -n $TF_SUBNET_NAME --query id -o tsv)
```

* Check states
```sh
terraform state list
```

* Show state details
```sh
terraform state show <state name>
```