# variable "resource_group_name" {
#   description = "Name of the Azure resource group"
#   type        = string
#   default     = "my-resource-group"
# }

# variable "location" {
#   description = "Location for all resources"
#   type        = string
#   default     = "East US"
# }

# variable "web_app_name" {
#   description = "Name of the Azure Web App"
#   type        = string
#   default     = "my-web-app"
# }

# variable "app_service_plan_name" {
#   type        = string
#   description = "App Service Plan name in Azure"
# }


# variable "acr_name" {
#   type        = string
#   description = "ACR name in Azure"
# }

# variable "cluster" {
#   type        = string
#   description = "cluster name in Azure"
# }

# variable "kubernetes_namespace_v1" {
#   type        = string
#   description = "kubernetes_namespace_v1 name in Azure"
# }

# variable "nginx_ingress" {
#   type        = string
#   description = "nginx_ingress name in Azure"
# }

variable "name" {
    type = string
}
variable "chart" {
  type = string
}
variable "repository" {
  type = string
}

