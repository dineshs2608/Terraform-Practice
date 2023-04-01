#Practice module assigning with count
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.38.0"
  }
  }
  #Backend storage of state file
  backend "azurerm" {
      subscription_id = "47ec7704-3c94-4cb1-b3c3-d0b77c2f60bf"
      tenant_id = "313f4e52-ec58-4a95-88d5-38c5e54f5c47"
      resource_group_name  = "backend"
      storage_account_name = "muu"
      container_name       = "statefile"
      access_key           = "BT62kjMDWDWr18IErvSt8g5+K2pXS3IITyR+kckVn1gKVQp6jUk4n7wwtgIL/SfBlc++vHaBsJPW+AStvtBv+g=="
  }

}

 

#providerblock
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
  client_id = var.client_id
  client_secret = var.client_secret

}

module "resource_group_name" {
  source = "../Modules/rg"
  rgname = "practice-rg"
  location = "south india"
}

# module "network_security_group" {
#   source = "../Modules/nsg"
#   nsgname = "practice-nsg"
# }

module "Virtual_network" {
  source = "../Modules/Vnet"
  vnet-name = "practice-vnet23"
  tags = "Dev Environment"
}

