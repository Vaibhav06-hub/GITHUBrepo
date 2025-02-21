
module "resource_group_call" {
  source = "./Resource_Group"
  //rg_name     = "VSUAWUSRG01"
  //rg_location = "westus"
}

module "virtual_network_call" {
  source = "./Virtual_Network"
  //vnet_name            = "VSUAWUSVNET01"
  //vnet_location        = "westus"
  vnet_rescource_group = module.resource_group_call.rg_out_name
  //vnet_address_space   = ["10.0.0.0/24"]
}

module "subnet_call" {
  source = "./Subnet"
  //subnet_name            = "subnet01"
  subnet_vnet            = module.virtual_network_call.vnet_out_name
  subnet_rescource_group = module.resource_group_call.rg_out_name
  //subnet_address_prefix  = ["10.0.0.0/26"]
}
/*
module "subnet_call2" {
  source                 = "./Subnet"
  subnet_name            = "subnet02"
  subnet_vnet            = module.virtual_network_call.vnet_out_name
  subnet_rescource_group = module.resource_group_call.rg_out_name
  subnet_address_prefix  = ["10.0.0.128/26"]
}
*/

module "network_interface_call" {
  source = "./Network_Interface_card"
  //network_interface_name                                 = "NIC01"
  network_interface_location        = module.resource_group_call.rg_out_location
  network_interface_rescource_group = module.resource_group_call.rg_out_name
  //network_interface_config_name                          = "internal"
  network_interface_subnet_id = module.subnet_call.subnet_out_id
  //network_interface_config_private_ip_address_allocation = "Dynamic"
  network_interface_public_ip_id = module.public_ip_call.public_ip_out_id
}

module "nsg_call" {
  source = "./Network_Security_Group"
  //network_security_group_name = "NIC01"
  network_security_group_id              = module.nsg_call.nsg_out_id
  network_security_group_subnet_id       = module.subnet_call.subnet_out_id
  network_security_group_nic_id          = module.network_interface_call.NIC_out_id
  network_security_group_rescource_group = module.resource_group_call.rg_out_name
  network_security_group_location        = module.resource_group_call.rg_out_location
}

module "nsg_rules_call" {
  source   = "./NSG_rules"
  for_each = { for rule in var.nsg : rule.name => rule }

  name     = each.value.name
  nsg-name = module.nsg_call.nsg_out_name
  //direction = "Inbound"
  priority               = each.value.priority
  destination_port_range = each.value.port
}

module "public_ip_call" {
  source = "./Public_IP"
  //public_ip_name = "Pip-01"
  public_ip_rescource_group = module.resource_group_call.rg_out_name
  public_ip_location        = module.resource_group_call.rg_out_location
}

module "virtual_machine_call" {
  source = "./Virtual_machine"
  //vm_name            = "VSUAWUSVM01"
  vm_location        = module.resource_group_call.rg_out_location
  vm_rescource_group = module.resource_group_call.rg_out_name
  //vm_size = 
  vm_network_interface_ids = module.network_interface_call.NIC_out_id

}


