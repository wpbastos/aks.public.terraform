resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "cosmosdb" {
  source                  = "./cosmosdb"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}
