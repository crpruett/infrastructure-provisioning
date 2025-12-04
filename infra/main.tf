locals {
  use_aws = var.cloud == "aws"
  use_azure = var.cloud == "azure"
}

module "network" {
  source = "../modules/network"
  cloud = var.cloud
  aws_region = var.aws_region
  azure_location = var.azure_location
}
