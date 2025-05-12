resource_group_name = "cloud-shell-storage-eastus"

storage_accounts = {
  example1 = {
    name                     = "examplestorage1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = {
      environment = "dev"
      project     = "example"
    }
  }
}
