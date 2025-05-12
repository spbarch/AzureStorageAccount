output "storage_account_id" {
  description = "The ID of the storage account."
  value       = module.storage_account.storage_account_id
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint for the storage account."
  value       = module.storage_account.storage_account_primary_endpoint
}
