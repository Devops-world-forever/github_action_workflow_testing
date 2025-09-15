terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }
    backend "azurerm" {
      resource_group_name = "practicedev-rg"
      storage_account_name = "practicedevstrg"
      container_name = "testcontainer"
      key="test.terraform.tfstate"
    }
}


provider "azurerm" {
    features {}
    }
