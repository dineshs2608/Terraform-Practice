#Practice module assigning with count
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.48.0"
  }
}
}
#Backend storage of state file
 backend "azurerm" {
      subscrption_id = var.subscription_id
      tenant_id = var.tenant_id
      resource_group_name  = var.resource_group_name
      storage_account_name = var.storage_account_name
      container_name       = var.container_name
      access_key           = var.key
  }

#providerblock
provider "azurerm" {
  features {}
  subscrption_id = var.subscription_id
  tenant_id = var.tenant_id
  client_id = var.client_id
  client_secret = var.client_secret

}

module "rg" {
  source = "git@github.com:dineshs2608/Terraform-module.git"
}