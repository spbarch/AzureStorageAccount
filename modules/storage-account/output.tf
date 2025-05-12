output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.this.id
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint for the storage account."
  value       = azurerm_storage_account.this.primary_blob_endpoint
}
