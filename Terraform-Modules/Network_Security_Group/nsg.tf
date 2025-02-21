

resource "azurerm_network_security_group" "NSG01" {
  name                = var.network_security_group_name
  location            = var.network_security_group_location
  resource_group_name = var.network_security_group_rescource_group
/*
  security_rule {
    name                       = "AllowRDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  */
}

resource "azurerm_subnet_network_security_group_association" "nsgAssociate_subnet" {
  subnet_id                 = var.network_security_group_subnet_id
  network_security_group_id = var.network_security_group_id
}
/*
resource "azurerm_network_interface_security_group_association" "nsgAssociate_nic" {
  network_interface_id      = var.network_security_group_nic_id
  network_security_group_id = var.network_security_group_id
}
*/