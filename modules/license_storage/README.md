# Azure License Storage Module

## Required variables

* `key_vault_id` - ID of Key Vault in which the Vault unseal key will be created
* `resource_name_prefix` - Prefix placed before resource names
* `vault_license_filepath` - Path to location of Vault license file

## Example usage

```hcl
module "license_storage" {
  source = "./modules/license_storage"

  key_vault_id           = "/subscriptions/.../resourceGroups/.../providers/Microsoft.KeyVault/vaults/..."
  resource_name_prefix   = "dev"
  vault_license_filepath = "./vault.hclic"
}
```
