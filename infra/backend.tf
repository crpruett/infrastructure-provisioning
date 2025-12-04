#Azure Backend

#terraform {
  # backend "azurerm" {
    #   resource_group_name = "tfstage-rg"
    #   storage_account_name = "tfstateaccountGin"
    #   container_name = "tfstate"
    #   key = "terraform.tfstate"
    #}
#}

#AWS Backend

#terraform {
  # backend "s3" {
    #   bucket = "tfstate-bucket"
    #   key = "global/s3/terraform.tfstate"
    #   region = "us-east-1"
    #   dynamodb_table = "terraform-locks"
    #   encrypt = true
    #}
  #}
