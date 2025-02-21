variable "rg_name" {
  description = "Name of the resource group"
  default = "VSUAWUSRG01"
  type = string
}

variable "nsg-name" {
  description = "Name of the NSG"
  type = string
}

variable "name" {
  description = "Name of the NSG rule"
  default = "NSG-RULE01"
  type = string
}

variable "priority" {
  description = "Priority of the rule"
  default = 100
  type        = number
  
}

variable "direction" {
  description = "Direction of the rule"
  default = "Inbound"
  type        = string
  
}

variable "access" {
  description = "Access of the rule"
  default = "Allow"
  type        = string
  
}

variable "protocol" {
  description = "Protocol of the rule"
  default = "Tcp"
  type        = string
  
}
variable "source_port_range" {
  description = "Source port of the rule"
  default = "*"
  type        = string
  
}
variable "destination_port_range" {
  description = "Destination port of the rule"
  default = "*"
  type        = string
  
}
variable "source_address_prefix" {
  description = "Source address of the rule"
  default = "*"
  type        = string
  
}
variable "destination_address_prefix" {
  description = "Destination address of the rule"
  default = "*"
  type        = string
  
}
