resource "azurerm_resource_group" "resource_group_name" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "azurerm_virtual_network" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.resource_group_name.name
  location            = var.location
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "azurerm_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.resource_group_name.name
  virtual_network_name = azurerm_virtual_network.azurerm_virtual_network.name
  address_prefixes     = var.subnet_address_space
}

resource "azurerm_network_interface" "network_interface" {
  name                = "${var.server_name}-nic"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group_name.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.azurerm_subnet.id
    private_ip_address_allocation = "Dynamic"
  }

}

resource "azurerm_windows_virtual_machine" "windows_vm" {
  name                = "terra-vm"
  resource_group_name = azurerm_resource_group.resource_group_name.name
  location            = azurerm_resource_group.resource_group_name.location
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "Password@1234!"
  network_interface_ids = [
    azurerm_network_interface.network_interface.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    version   = "latest"
  }

}