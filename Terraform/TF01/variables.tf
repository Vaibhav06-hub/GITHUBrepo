variable "server_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "vnet_name" {
  type = string
}
variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.11.0/24"]
}
variable "subnet_name" {
  type = string
}
variable "subnet_address_space" {
  type = list(string)
}