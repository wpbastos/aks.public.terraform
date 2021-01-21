variable "cosmos_db_account_name" {
  default = "wpb-demo-mongo"
}

variable "resource_group_name" {}

variable "resource_group_location" {}

resource "azurerm_cosmosdb_account" "acc" {
  name                      = var.cosmos_db_account_name
  location                  = var.resource_group_location
  resource_group_name       = var.resource_group_name
  offer_type                = "Standard"
  kind                      = "MongoDB"
  enable_automatic_failover = true
  consistency_policy {
    consistency_level = "Session"
  }
  geo_location {
    location          = var.resource_group_location
    failover_priority = 0
  }
}
