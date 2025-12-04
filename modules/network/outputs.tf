output "aws_vpc_id" {
  value = aws_vpc.main[0].id
  description = "the ID of the AWS VPC"
  condition = var.cloud == "aws"
}

output "aws_public_subnet_id" {
  value = aws_subnet.public[0].id
  description = "The ID of the AWS subnet"
  condition = var.cloud == "aws"
}

output "azure_vnet_name" {
  value = azurerm_virtual_network.vnet[0].name
  description = "Name of the Azure VNET"
}

output "azure_subnet_id" {
  value = azurerm_subnet.subnet[0].id
  description = "ID of the subnet" 
}

