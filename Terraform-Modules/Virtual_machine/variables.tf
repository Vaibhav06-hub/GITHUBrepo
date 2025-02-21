variable "vm_name" {
  type = string
  default = "VSUAWUSVM01"
  description = "Name of the virtual machine"
}

variable "vm_location" {
  type = string
  default = "westus"
  description = "Location of the virtual machine"
}

variable "vm_rescource_group" {
  type = string
  default = "VSUAWUSRG01"
  description = "RG of the virtual machine"
}

variable "vm_size" {
  type = string
  default = "Standard_B1s"
  description = "Size of the virtual machine"
}

variable "vm_admin_user" {
  type = string
  default = "maven"
  description = "User name of the virtual machine"
}


variable "vm_admin_password" {
  type = string
  default = "MavenAdmin01"
  description = "User password of the virtual machine"
}

variable "vm_network_interface_ids" {
  type = string
  description = "Network_interface_ids of the virtual machine"
}