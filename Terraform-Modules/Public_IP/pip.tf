resource "azurerm_public_ip" "Public_ip" {
  name                = var.public_ip_name
  resource_group_name = var.public_ip_rescource_group
  location            = var.public_ip_location
  allocation_method   = var.public_ip_allocation_method
}