
variable "storage_account_name" {
  type = string
  default = "vsuawussa01"
  description = "Name of the storage account name"
}

variable "storage_account_location" {
  type = string
  default = "westus"
  description = "Location of the storage account name"
}

variable "storage_account_rescource_group" {
  type = string
  default = "VSUAWUSRG01"
  description = "RG of the storage account name"
}

variable "storage_account_account_tier" {
  type = string
  default = "Static"
  description = "Storage account account tier"
}

variable "storage_account_replication_type" {
  type = string
  default = "LRS"
  description = "Storage account replication type"
}
