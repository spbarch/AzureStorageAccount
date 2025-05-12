variable "storage_account_name" {
  description = "The name of the storage account. Must be unique."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
}

variable "location" {
  description = "The Azure location where the storage account should be created."
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account. Possible values: Standard, Premium."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account. Possible values: LRS, GRS, ZRS, RAGRS, etc."
  type        = string
  default     = "LRS"
}

variable "allow_blob_public_access" {
  description = "Allows or disallows public access to blob containers."
  type        = bool
  default     = false
}

variable "enable_https_traffic_only" {
  description = "Enforces HTTPS traffic only."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
