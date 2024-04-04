terraform {
  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "~> 6.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "github" {
  token="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"
}

provider "azurerm" {
  skip_provider_registration = true 
  client_id = "3b6e9788-7272-4e6e-82b6-0f9b4e5bd809"
  client_secret = "8AH8Q~2RUuLxF.qlPBsKIc0sJOeJyS.HrnONCcSH"
  tenant_id = "e378272e-61df-4269-b4f4-833c521b7bf9"
  subscription_id = "c270375a-a0ab-4551-9ebb-ab9503713972"
  features {}
}
