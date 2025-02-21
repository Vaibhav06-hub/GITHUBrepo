
resource "azurerm_storage_account" "Storgae_Account" {
  name                     = var.storage_account_name
  resource_group_name      = var.storage_account_rescource_group
  location                 = var.storage_account_location
  account_tier             = var.storage_account_account_tier
  account_replication_type = var.storage_account_replication_type

}
/*
resource "azurerm_storage_container" "Contianer" {
  name               = "vsuawussacount01"
  storage_account_id = azurerm_storage_account.Storgae_Account.id
  depends_on         = [azurerm_storage_account.Storgae_Account]

}

resource "azurerm_storage_blob" "Count1" {
  name                   = "blob01.txt"
  storage_container_name = azurerm_storage_container.Contianer.name
  storage_account_name   = azurerm_storage_account.Storgae_Account.name
  type                   = "Block"
  source                 = "terrastorecount01.txt"
  depends_on             = [azurerm_storage_container.Contianer]
}
*/