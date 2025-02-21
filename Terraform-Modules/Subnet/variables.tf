variable "subnet_name" {
  type = string
  default = "subnet-1"
  description = "Name of the subnet"
}

variable "subnet_vnet" {
  type = string
  default = "VSUAWUSVNET01"
  description = "Vnet of the subnet"
}

variable "subnet_rescource_group" {
  type = string
  default = "VSUAWUSRG01"
  description = "RG of the subnet"
}

variable "subnet_address_prefix" {
  type = list(string)
  default = ["11.0.0.0/26"]
  description = "Address prefix of the virtual network"
}
