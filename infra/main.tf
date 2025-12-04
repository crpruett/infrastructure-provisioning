module "network" {
  source = "../modules/network"
  cloud = var.cloud
  aws_region = var.aws_region
  azure_location = var.azure_location
}
