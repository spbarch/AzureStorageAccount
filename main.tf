provider "azurerm" {
  features {}
}

module "storage_account" {
  source = "./modules/storage-account"

  storage_account_name      = var.storage_account_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  allow_blob_public_access  = var.allow_blob_public_access
  enable_https_traffic_only = var.enable_https_traffic_only
  tags                      = var.tags
}
