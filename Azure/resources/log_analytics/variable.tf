
variable "log_analytics_workspace_name" {
  description = "Specifies the name of the log analytics."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Application Insights component."
  type        = string
}

variable "log_analytics_sku" {
  description = "sku details"
  type        = string
}

variable "retention_days" {
  description = "Specifies the retention period in days."
  type        = number
}