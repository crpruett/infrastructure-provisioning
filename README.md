# Terraform Infrastructure — Azure & AWS

This repository contains the Terraform configurations used to build and maintain cloud resources across Azure and AWS.  
The focus is on creating reliable, modular infrastructure that supports both experimentation and production-aligned learning.

The codebase is designed around cloud-scale patterns, consistent naming and tagging standards, and a workflow that can be expanded into a full platform engineering model.

---

## Purpose and Design Philosophy

This Terraform environment is structured to:

- Enable multi-cloud provisioning (Azure + AWS)  
- Maintain clear separation between cloud responsibilities  
- Support modular, reusable infrastructure components  
- Use an Azure Storage Account for remote state management  
- Provide a safe environment to model enterprise-grade IaC workflows  
- Build familiarity with cross-cloud design, identity, and networking  

Although it is oriented around learning, the design choices reflect real-world Terraform practices.

---

## Remote State Backend (Azure Storage)

Terraform state is stored in an Azure Storage Account to ensure consistency and support multi-environment workflows.

Example backend configuration:

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstatehomelab"
    container_name       = "tfstate"
    key                  = "env/dev/terraform.tfstate"
  }
}
