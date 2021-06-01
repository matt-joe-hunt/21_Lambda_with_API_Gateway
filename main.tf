provider "aws" {
  region = var.region-master
}

module "API_Gateway" {
  source            = "./API_Gateway"
  API_name          = var.API_name
  resource_path     = var.resource_path
  lambda_invoke_arn = module.Lambda.lambda_invoke_arn
}

module "Lambda" {
  source               = "./Lambda"
  api_gw_execution_arn = module.API_Gateway.execution_arn
}