resource "azurerm_network_interface" "NIC" {
  name                = var.network_interface_name
  location            = var.network_interface_location
  resource_group_name = var.network_interface_rescource_group
  
  ip_configuration {
    name                          = var.network_interface_config_name
    subnet_id                     = var.network_interface_subnet_id
    private_ip_address_allocation = var.network_interface_config_private_ip_address_allocation
    public_ip_address_id          = var.network_interface_public_ip_id
  }

}