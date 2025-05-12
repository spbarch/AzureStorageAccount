variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the storage account will be deployed"
  type        = string
}

variable "storage_account_name" {
  description = "Unique name for the storage account"
  type        = string
}

variable "account_tier" {
  description = "Performance tier (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication strategy (LRS, GRS, ZRS, etc.)"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags to assign to the resources"
  type        = map(string)
  default     = {}
}
