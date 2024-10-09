variable "mongodb_name" {
  type        = string
  description = "name of mongo db namespace"

}

variable "mongodb_repository" {
  type        = string
  description = "url of repository"

}

variable "mongodb_chart" {
  type        = string
  description = "name of helm chart"

}

variable "mongodb_namespace" {
  type        = string
  description = "name of mongodb namespace"

}

# variable "mongodb_create_namespace" {
#   type        = bool
#   description = "create mongodb namespace"

# }