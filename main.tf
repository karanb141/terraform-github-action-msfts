terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "TerraformPC_API_update"
    storage_account_name = "pcapistorage"
    container_name       = "tfstatefile"
    key                  = "terraform.tfstate"
    #tenant_id = "15d51b4e-b761-428f-b55c-5030645146f6"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

# Define any Azure resources to be created here. A simple resource group is shown here as a minimal example.
