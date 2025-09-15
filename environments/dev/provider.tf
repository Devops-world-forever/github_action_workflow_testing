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
    subscription_id = "16648c27-24de-48bf-b2d6-cc829eea5412"
}