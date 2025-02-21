
variable "network_interface_name" {
  type = string
  default = "NIC01"
  description = "Name of the network interface"

}

variable "network_interface_location" {
  type = string
  default = "westus"
  description = "Location of the network interface"

}

variable "network_interface_rescource_group" {
  type = string
  default = "VSUAWUSRG01"
  description = "RG of the network interface"
}

variable "network_interface_config_name" {
  type = string
  default = "internal"
  description = "Network interface config name"
}


variable "network_interface_subnet_id" {
  type = string
  //default = subnet_out_id
  description = "Subnet of the network interface"
}

variable "network_interface_config_private_ip_address_allocation" {
  type = string
  default = "Dynamic"
  description = "Network interface config private ip address allocation"
}

variable "network_interface_public_ip_id" {
  type = string
  //default = subnet_out_id
  description = "Public ip associated with NIC"
}