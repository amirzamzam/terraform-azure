terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "a8ba6fc2-ecad-4ee8-9905-81cdccea9a57"  
  features {}
}

resource "azurerm_resource_group" "name" {
  name = "terra-rg"
  location = "eastus"
  tags = {
    environment = "dev"
    source = "Terraform"
    owner = "Amir"
  }
}