locals {
  use_aws   = var.cloud == "aws"
  use_azure = var.cloud == "azure"
}

module "network" {
  source         = "../modules/network"
  cloud          = var.cloud
  aws_region     = var.aws_region
  azure_location = var.azure_location
}

resource "aws_s3_bucket" "bigbuck" {
  count  = var.cloud == "aws" ? 1 : 0
  bucket = "dev-test-${random_id.bigbuck[0].hex}"
}

resource "random_id" "bigbuck" {
  count       = var.cloud == "aws" ? 1 : 0
  byte_length = 2
}

resource "azurerm_storage_account" "stor-test" {
  count                    = var.cloud == "azure" ? 1 : 0
  name                     = "stortest${random_id.stor-suffix[0].hex}"
  resource_group_name      = module.network.azure_resource_group_name
  location                 = var.azure_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "random_id" "stor-suffix" {
  count       = var.cloud == "azure" ? 1 : 0
  byte_length = "2"
}
