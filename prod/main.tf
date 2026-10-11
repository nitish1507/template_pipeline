terraform {
    required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.8.0"
    }
   }
  

  backend "azurerm" {
    resource_group_name  = "Do-Not-Delete-RG"
    storage_account_name = "donotdeletestorage"
    container_name       = "nitish-container"
    key                  = "prod.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "prod-rg" {
  name     = "prod-rg"
  location = "central india"
}


resource "azurerm_resource_group" "prod-rg1" {
  name     = "prod-rg1"
  location = "central india"
}
