provider "azurerm" {
  #   version         = "~>2.0"
  subscription_id = var.SUBSCIPTION_ID
  tenant_id       = var.TENANT_ID
  features {}
}
