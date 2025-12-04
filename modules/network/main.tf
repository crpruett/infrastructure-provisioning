resource "aws_vpc" "main" {
  count = var.cloud == "aws" ? 1 : 0
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "bicloud-vpc"
  }
}

resource "aws_subnet" "public" {
  count = var.cloud == "aws" ? 1 : 0
  vpc_id = aws_vpc.main[0].id
  cidr_block = "10.0.1.0/24"
  availability_zone = "${var.aws_region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "bicloud-subnet"
  }
}

resource "azurerm_resource_group" "rg" {
  count = var.cloud == "azure" ? 1 : 0
  name = "bicloud-newtork-rg"
  location = var.azure_location
}

resource "azurerm_virtual_network" "vnet" {
  count = var.cloud == "azure" ? 1 : 0
  name = "bicloud-vnet"
  address_space = ["10.1.0.0/16"]
  location = var.azure_location
  resrouce_group_name = azurerm_resource_group.rg[0].name
}

resource "azurerm_subnet" "subnet" {
  count = var.cloud == "azure" ? 1 : 0
  name = "bicloud-subnet"
  resource_group_name = azurerm_resource_group.rg[0].name
  virtual_network_name = azurerm_virtual_network.vnet[0].name
  address_prefixes = ["10.1.1.0/24"]
}
