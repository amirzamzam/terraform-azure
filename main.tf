terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}

provider "azurerm" {
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