# azurerm_application_insights variables

variable "app_insights_name" {
  description = "Specifies the name of the Application Insights component."
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

variable "workspace_id" {
  description = "Specifies the id of a log analytics workspace resource."
  type        = string
}

variable "application_type" {
  description = " Specifies the type of Application Insights to create."
  type        = string
}