locals{
    github_secret_name= "TERRAFORM_TOKEN"
    encrypted_value=base64encode(data.azurerm_key_vault_secret.get_azure_keyvault_secret.value)
}

locals {
  github_repository_name="masterRepo"
}
locals {
  key_vault_name="Tenant-ID"
  key_vault_id= "/subscriptions/c270375a-a0ab-4551-9ebb-ab9503713972/resourceGroups/BDAZE1IDAPPRG01/providers/Microsoft.KeyVault/vaults/SPNKeyVault02"
}

