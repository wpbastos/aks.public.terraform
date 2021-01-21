variable "container_registry_name" {
  default = "wpbdemocontainer"
}

variable "resource_group_name" {}

variable "resource_group_location" {}

resource "azurerm_container_registry" "acr" {
  name                = var.container_registry_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  sku                 = "Basic"
  admin_enabled       = false
}
