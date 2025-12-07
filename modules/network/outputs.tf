output "aws_vpc_id" {
  description = "AWS VPC ID or null if not using AWS"

  value = (
    var.cloud == "aws" && length(aws_vpc.main) > 0
    ? aws_vpc.main[0].id
    : null
  )
}

output "aws_public_subnet_id" {
  description = "AWS public subnet ID or null if not using AWS"

  value = (
    var.cloud == "aws" && length(aws_subnet.public) > 0
    ? aws_subnet.public[0].id
    : null
  )
}

output "azure_vnet_name" {
  description = "Azure VNET name or null if not using Azure"

  value = (
    var.cloud == "azure" && length(azurerm_virtual_network.vnet) > 0
    ? azurerm_virtual_network.vnet[0].name
    : null
  )
}

output "azure_subnet_id" {
  description = "Azure subnet ID or null if not using Azure"

  value = (
    var.cloud == "azure" && length(azurerm_subnet.subnet) > 0
    ? azurerm_subnet.subnet[0].id
    : null
  )
}

output "azure_resource_group_name" {
  description = "Naming the Azure group"
  value = (
    var.cloud == "azure" && length (azurerm_resource_group.rg) > 0
    ? azurerm_resource_group.rg[0].name
    : null
  )
}
