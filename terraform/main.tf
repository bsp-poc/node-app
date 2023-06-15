# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }

  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstate20025"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
      access_key           = "4dvockTjYvbQSbTiXsmzSNbMPe81LalCSQ/hbEPqT4WFiblel7wuGrgEyh0yOBXcP2FMD77mx399+AStDrpfWw=="
  }

  required_version = ">= 1.1.0"
}

variable "subscription_id" {
 type = string
 default = "0000-0000-0000-0000"
 description = "Azure Subscription ID"
}

variable "tenant_id" {
 type = string
 default = "0000-0000-0000-0000"
 description = "Tenant ID"
}

variable "client_id" {
 type = string
 default = "0000-0000-0000-0000"
 description = "Client ID"
}

variable "client_secret" {
 type = string
 default = "0000-0000-0000-0000"
 description = "Client Secret"
}


provider "azurerm" {
  subscription_id   =  var.subscription_id  
  tenant_id         =  var.tenant_id        
  client_id         =  var.client_id        
  client_secret     =  var.client_secret    
  
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup2"
  location = "westus2"
}
resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup3"
  location = "westus2"
}