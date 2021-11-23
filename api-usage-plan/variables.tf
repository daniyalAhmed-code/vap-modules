variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = "API Gateway Usage Plan"
}

variable "apis" {
  type = list(object({
    id    = string
    stage = string
  }))
  description = "Apis to be add to usage plan"
  default     = null
}