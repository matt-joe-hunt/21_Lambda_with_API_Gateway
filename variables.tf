# Generic Variables

variable "profile" {
  type    = string
  default = "default"
}

variable "region-master" {
  type    = string
  default = "eu-west-1"
}

variable "project" {
  type        = string
  description = "consistent name to be used throughout your project"
  default     = "sample_project"
}

variable "environment" {
  type        = string
  description = "environment you are working in, for example dev/qa/staging/production"
  default     = "dev"
}

variable "accountID" {
  type        = string
  description = "Replace the default value below with your Account ID (can be found in the upper right of the AWS Management Console)"
  default     = "XXXXXXXXXXXX"
}

# API Variables

variable "API_name" {
  type    = string
  default = "sample_API"
}

variable "resource_path" {
  type    = string
  default = "resource"
}