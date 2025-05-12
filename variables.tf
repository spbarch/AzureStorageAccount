variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
}

variable "storage_accounts" {
  description = "A map of storage account configurations."
  type = map(object({
    name                     = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  }))
}
