provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "casehub_rg" {
  name     = "casehub-rg"
  location = "Southeast Asia"
}

resource "azurerm_storage_account" "casehubstorage" {
  name                     = "casehubstorage123"
  resource_group_name      = azurerm_resource_group.casehub_rg.name
  location                 = azurerm_resource_group.casehub_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
