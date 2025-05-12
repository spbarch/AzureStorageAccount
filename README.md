# Azure Storage Account Management with Terraform

This repository contains Terraform code to manage Azure storage accounts in a specified resource group. It is designed to be used in conjunction with a ServiceNow application and Azure CloudShell.

## Prerequisites

1. Access to an Azure subscription.
2. Permissions to manage resources in the specified resource group.
3. Terraform installed in Azure CloudShell.

## Files in this Repository

- `main.tf`: Defines the storage account resources.
- `variables.tf`: Declares input variables.
- `outputs.tf`: Specifies outputs for the created resources.
- `provider.tf`: Configures the Azure provider.
- `.gitignore`: Defines files to be ignored in version control.
- `README.md`: Explains the repository.

## Usage

1. Clone this repository to your Azure CloudShell environment.
2. Create a `terraform.tfvars` file to provide input values (example below).
3. Initialize Terraform:
   ```bash
   terraform init
   ```
4. Plan the changes:
   ```bash
   terraform plan
   ```
5. Apply the changes:
   ```bash
   terraform apply
   ```

## Example `terraform.tfvars`

```hcl
resource_group_name = "my-resource-group"

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
  example2 = {
    name                     = "examplestorage2"
    location                 = "West US"
    account_tier             = "Premium"
    account_replication_type = "GRS"
    tags = {
      environment = "prod"
      project     = "example"
    }
  }
}
```

## Notes

- Ensure that the storage account names are globally unique.
- Customize the `terraform.tfvars` file with your desired configurations.
- Use the outputs to retrieve storage account details for further use.
   terraform apply -var-file="terraform.tfvars"
   ```

## ServiceNow Integration
- Inputs from ServiceNow will dynamically generate the `terraform.tfvars` file.
- Terraform runs will be triggered using an API or GitHub Actions.
