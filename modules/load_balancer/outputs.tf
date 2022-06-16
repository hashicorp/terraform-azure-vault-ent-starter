output "backend_address_pool_id" {
  value = tolist(azurerm_application_gateway.vault.backend_address_pool)[0].id
}
