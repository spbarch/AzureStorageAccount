output "storage_account_id" {
  description = "ID of the created storage account"
  value       = module.storage_account.storage_account_id
}

output "primary_blob_endpoint" {
  description = "Primary Blob service endpoint for the storage account"
  value       = module.storage_account.primary_blob_endpoint
}
