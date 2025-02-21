resource "azurerm_subnet" "Subnet" {
  name = var.subnet_name
  virtual_network_name = var.subnet_vnet
  resource_group_name = var.subnet_rescource_group
  address_prefixes = var.subnet_address_prefix
}