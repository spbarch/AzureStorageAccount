output "storage_account_ids" {
  description = "The IDs of the created storage accounts."
  value       = { for k, sa in azurerm_storage_account.storage : k => sa.id }
}

output "storage_account_primary_blob_endpoints" {
  description = "The primary blob endpoints of the created storage accounts."
  value       = { for k, sa in azurerm_storage_account.storage : k => sa.primary_blob_endpoint }
}
