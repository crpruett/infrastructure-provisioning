output "aws_vpc_id" {
  description = "The ID of the AWS VPC (null if not using AWS)"

  value = var.cloud == "aws" && length(aws_vpc.main) > 0 ?
    aws_vpc.main[0].id :
    null
}

output "aws_public_subnet_id" {
  description = "The ID of the AWS public subnet (null if not using AWS)"

  value = var.cloud == "aws" && length(aws_subnet.public) > 0 ?
    aws_subnet.public[0].id :
    null
}

output "azure_vnet_name" {
  description = "The name of the Azure VNET (null if not using Azure)"

  value = var.cloud == "azure" && length(azurerm_virtual_network.vnet) > 0 ?
    azurerm_virtual_network.vnet[0].name :
    null
}

output "azure_subnet_id" {
  description = "The ID of the Azure subnet (null if not using Azure)"

  value = var.cloud == "azure" && length(azurerm_subnet.subnet) > 0 ?
    azurerm_subnet.subnet[0].id :
    null
}

output "network_summary" {
  description = "Summary of network resources created depending on cloud"

  value = {
    cloud               = var.cloud
    aws_vpc_id          = module.network.aws_vpc_id
    aws_public_subnet   = module.network.aws_public_subnet_id
    azure_vnet_name     = module.network.azure_vnet_name
    azure_subnet_id     = module.network.azure_subnet_id
  }
}


