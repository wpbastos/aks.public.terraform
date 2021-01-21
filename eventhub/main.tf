variable "eventhub_namespace_name" {
  default = "wpbdemoeventhub"
}

variable "resource_group_name" {}

variable "resource_group_location" {}

resource "azurerm_eventhub_namespace" "example" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku                 = "Basic"

  tags = {
    environment = "demo"
  }
}
