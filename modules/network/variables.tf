variable "cloud" {
  type = string
  description = "Which cloud are you deploying to? Aws or Azure?"
}

variable "aws_region" {
  type = string
  description = "AWS deployment"
}

variable "azure_location" {
  type = string
  description = "Azure deployment"
}
