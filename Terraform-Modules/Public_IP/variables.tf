
variable "public_ip_name" {
  type = string
  default = "pip01"
  description = "Name of the public ip"
}

variable "public_ip_location" {
  type = string
  default = "westus"
  description = "Location of the public ip"
}

variable "public_ip_rescource_group" {
  type = string
  default = "VSUAWUSRG01"
  description = "RG of the public id"
}

variable "public_ip_allocation_method" {
  type = string
  default = "Static"
  description = "Public ip allocation method"
}
