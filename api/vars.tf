# Global
variable "stage_name" {
  description = "API Gateway Stage Name"
  type        = string
}

## API
variable "name" {
  description = "API Gateway name"
  type        = string
}

variable "description" {
  description = "API description"
  type        = string
}

## Swagger file
variable "swagger_file" {
  description = "Path to the swagger file"
  type        = string
  default     = ""
}

variable "common_swagger" {
  description = "Path to the common swagger file if used"
  type        = string
  default     = null
}

variable "swagger_vars" {
  description = "Map with the variables to be included in the swagger file"
  type        = map(string)
  default     = null
}

## Lambda
variable "add_lambda_permission" {
  description = "Check if is needed to add a lambda permission to API Gateway"
  type        = bool
}

variable "lambda_functions_names" {
  description = "List of lambda functions names to be integrated with API Gateway"
  type        = list(string)
  default     = []
}

## WAF
variable "waf_acl_id" {
  description = "WAF ID to add to the API Gateway"
  type        = string
  default     = ""
}

## Cloudwatch Logs
variable "log_retention_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0"
  type        = number
  default     = 30
}

## Custom Domain
variable "domain_name" {
  type    = string
  default = "Custom Domain to API"
}

variable "base_path" {
  type    = string
  default = "Base Path to api"
}
