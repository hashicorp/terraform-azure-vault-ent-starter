output "key_vault_id" {
  description = "Key Vault ID"
  value       = azurerm_key_vault_access_policy.vault.key_vault_id
}

output "key_vault_ssl_cert_secret_id" {
  description = "Secret ID of Key Vault Certificate for Vault TLS"
  value       = azurerm_key_vault_certificate.vault.secret_id
}

output "key_vault_vm_tls_secret_id" {
  description = "Key Vault Secret id where VM TLS cert info is stored"
  value       = azurerm_key_vault_secret.vault.id
}

output "root_ca_pem" {
  value = tls_self_signed_cert.ca.cert_pem
}

output "shared_san" {
  value = tls_cert_request.server.dns_names[0]
}
