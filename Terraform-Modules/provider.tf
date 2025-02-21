terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "XXXX"
  tenant_id       = "XXXX"
  client_id       = "XXXX"
  client_secret   = "XXXX"
}
/*
variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}
*/
/*
data "azurerm_key_vault" "key_vault" {
  name                = "mysecrests"
  resource_group_name = "tfdatasource"
}

output "vault_uri" {
  value = data.azurerm_key_vault.key_vault.vault_uri
}

data "azurerm_key_vault_secret" "secrets" {
  name         = "ajkasdhfkjashdk"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

output "secret_value" {
  value     = data.azurerm_key_vault_secret.secrets.value
  sensitive = true
}
*/