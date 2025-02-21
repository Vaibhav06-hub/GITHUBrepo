variable "vnet_name" {
  type = string
  default = "VSUAWUSVNET01"
  description = "Name of the virtual network"
}

variable "vnet_location" {
  type = string
  default = "westus"
  description = "Location of the virtual network"
}

variable "vnet_rescource_group" {
  type = string
  default = "VSUAWUSRG01"
  description = "RG of the virtual network"
}

variable "vnet_address_space" {
  type = list(string)
  default = ["11.0.0.0/24"]
  description = "Address space of the virtual network"
}
