variable "aws_region" {
  description = "AWS deployment"
  type = string
  default = "us-east-1"
}

variable "azure_location" {
  description = "Azure deployment"
  type = string
  default = "eastus"
}

variable "cloud" {
  description = "Which cloud are you deploying to? AWS or Azure?"
  type = string
}
