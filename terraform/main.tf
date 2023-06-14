# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.8.0"
    }
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
  name     = "myTFResourceGroup"
  location = "westus2"
}