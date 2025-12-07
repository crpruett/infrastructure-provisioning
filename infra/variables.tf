variable "aws_region" {
  description = "AWS deployment"
  type        = string
  default     = "us-east-1"
}

variable "azure_location" {
  description = "Azure deployment"
  type        = string
  default     = "eastus"
}

variable "cloud" {
  description = "Which cloud are you deploying to? AWS or Azure?"
  type        = string
}

variable "azure_subscription_id" {
  type        = string
  description = "The Azure subscription to deploy into"
}

variable "azure_tenant_id" {
  type        = string
  description = "The Azure AD tenant ID"
}

