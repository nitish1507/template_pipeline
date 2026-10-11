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
    key                  = "preprod.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "preprod" {
  name     = "preprod-rg"
  location = "central india"
}

resource "azurerm_resource_group" "preprod1" {
  name     = "preprod-rg1"
  location = "central india"
}

resource "azurerm_resource_group" "preprod2" {
  name     = "preprod-rg2"
  location = "central india"
}


