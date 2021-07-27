resource "azurerm_key_vault_secret" "vault_license" {
  key_vault_id = var.key_vault_id
  name         = "${var.resource_name_prefix}-vault-license"
  tags         = var.common_tags
  value        = filebase64(var.vault_license_filepath)
}
