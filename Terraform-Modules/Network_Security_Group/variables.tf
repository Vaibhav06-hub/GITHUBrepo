variable "network_security_group_name" {
  type = string
  default = "VSUAWUSRG01"
  description = "Name of the Network security group"
}

variable "network_security_group_location" {
  type = string
  default = "westus"
  description = "Location of the Network security group"
}

variable "network_security_group_rescource_group" {
  type = string
  default = "VSUAWUSRG01"
  description = "RG of the Network security group"
}

variable "network_security_group_subnet_id" {
  type = string
  description = "Network security group subnet id"
}

variable "network_security_group_nic_id" {
  type = string
  description = "Network security group NIC id"
}

variable "network_security_group_id" {
  type = string
  description = "Network security group id"
}