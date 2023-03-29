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
      resource_group_name  = "backend"
      storage_account_name = "muu"
      container_name       = "statefile"
      key                  = "terraform.tfstate"
  }