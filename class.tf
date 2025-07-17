terraform {
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3f7c4872-f198-45b7-984d-0ab188b016e6"
}

resource "azurerm_resource_group" "kd12" {
  name     = "kd12-rg"
  location = "west us"
}
resource "azurerm_storage_account" "nannu1" {
  name                     = "dhodhu1"
  resource_group_name      = azurerm_resource_group.kd12.name
  location                 = azurerm_resource_group.kd12.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.kd12]
  tags = {
    enviroment = "staging"
  }
}
