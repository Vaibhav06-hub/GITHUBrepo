terraform {
  backend "azurerm" {
    resource_group_name  = "ResourcesForMavenPROJ01"
    storage_account_name = "storagefortf0002"
    container_name       = "backendtf"
    key                  = "terraform.tfstate"
  }
}