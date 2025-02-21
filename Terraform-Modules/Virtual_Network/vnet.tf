resource "azurerm_virtual_network" "virtual_network" {
  name = var.vnet_name
  location = var.vnet_location
  resource_group_name = var.vnet_rescource_group
  address_space = var.vnet_address_space
}