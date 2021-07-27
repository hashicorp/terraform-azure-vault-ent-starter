variable "common_tags" {
  description = "(Optional) Map of common tags for all taggable resources"
  type        = map(string)
}

variable "key_vault_id" {
  description = "Azure Key Vault in which the Vault seal secret will be stored"
  type        = string
}

variable "resource_name_prefix" {
  description = "Prefix applied to resource names"
  type        = string
}

variable "vault_license_filepath" {
  type        = string
  description = "Path to location of Vault license file"
}
