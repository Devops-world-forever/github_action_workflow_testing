module "azurerm_resource_group" {
  source   = "../../modules/azurerm_resource_group"
  rg_name  = "test12345"
  location = "central india"
}
module "azurerm_storage_account" {
  depends_on = [ module.azurerm_resource_group ]
  source                   = "../../modules/azurerm_storage_Account"
  strg_name                = "teststrg321"
  rg_name                  = "test12345"
  location                 = "central india"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
