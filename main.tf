resource "github_repository" "Clone_Repo" {

  name        = "masterRepoCloneLocal12"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner                = "rayanki0206"
    repository           = "masterRepo"
    include_all_branches = false
    
  }
}
data "azurerm_key_vault_secret" "get_azure_keyvault_secret" {
  name         = local.key_vault_name
  key_vault_id = local.key_vault_id
}

resource "github_actions_secret" "GitHub_secret" {
  repository       = local.github_repository_name
  secret_name      = local.github_secret_name
  encrypted_value  = local.encrypted_value
}

