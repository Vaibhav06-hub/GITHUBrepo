output "vnet_out_name" {
  value = azurerm_virtual_network.virtual_network.name
  description = "Name of the virtual network"
}

output "vnet_out_location" {
  value = azurerm_virtual_network.virtual_network.location
  description = "Location of the virtual network"
}

output "vnet_out_rescource_group" {
  value = azurerm_virtual_network.virtual_network.resource_group_name
  description = "RG of the virtual network"
}

output "vnet_out_address_space" {
  value = azurerm_virtual_network.virtual_network.address_space
  description = "Address space of the virtual network"
}
