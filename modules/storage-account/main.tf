provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  # Optional settings
  allow_blob_public_access = var.allow_blob_public_access
  enable_https_traffic_only = var.enable_https_traffic_only

  tags = var.tags
}
