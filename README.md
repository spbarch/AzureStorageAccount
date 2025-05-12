# Azure Storage Account Deployment with Terraform

This repository contains code to deploy an Azure Storage Account using Terraform. It is designed for future integration with ServiceNow to dynamically generate input values.

## Features
- Modularized Terraform code for reusability.
- GitHub Actions workflow for automated Terraform execution.
- Ready for integration with ServiceNow.

## Structure
```
AzureStorageAccount/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
├── modules/
│   └── storage_account/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── .github/
│   └── workflows/
│       └── terraform.yml
└── README.md
```

## Getting Started
1. Clone the repository.
2. Create a `terraform.tfvars` file using `terraform.tfvars.example`.
3. Run Terraform commands:
   ```bash
   terraform init
   terraform plan -var-file="terraform.tfvars"
   terraform apply -var-file="terraform.tfvars"
   ```

## ServiceNow Integration
- Inputs from ServiceNow will dynamically generate the `terraform.tfvars` file.
- Terraform runs will be triggered using an API or GitHub Actions.
