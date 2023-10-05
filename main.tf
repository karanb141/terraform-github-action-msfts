terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.24.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "TerraformPC_API_update"
    storage_account_name = "pcapistorage"
    container_name       = "tfstatefile"
    key                  = "terraform.tfstate"
    #access_key           = "eX3RHJAzsN15k64psjYas/0bwIYimtaOE3k9CKXoa/DRZ13EoC4h8ftp6s9wy4NT0+p+nkhAEje/+AStnHczWQ=="
    #tenant_id = "15d51b4e-b761-428f-b55c-5030645146f6"
    #subscription_id      = "c3ace9c5-f5d5-491f-9c11-ac9c41516a41"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

# Define any Azure resources to be created here. A simple resource group is shown here as a minimal example.
