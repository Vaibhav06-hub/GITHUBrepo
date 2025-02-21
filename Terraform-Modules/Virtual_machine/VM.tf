resource "azurerm_windows_virtual_machine" "VM" {
  name                = "VSUAWUSWVM01"
  resource_group_name = var.vm_rescource_group
  location            = var.vm_location
  size                = var.vm_size
  admin_username      = var.vm_admin_user
  admin_password      = var.vm_admin_password
  network_interface_ids = [ var.vm_network_interface_ids  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }

 // depends_on = [azurerm_resource_group.Resource_Group, azurerm_network_interface.NIC01]
}