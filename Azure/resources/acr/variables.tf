# variable "resource_group_name" {
#   description = "Name of the Azure resource group"
#   type        = string
# }

# variable "location" {
#   description = "Name of the Azure resource group"
#   type        = string
# }
# variable "acr_name" {
#   type        = string
#   description = "ACR name in Azure"
# }
# variable "acr_sku" {
#   type = string
#   description = "The SKU of the Azure Container Registry"
# }
# variable "admin_enabled" {
#   type = bool
#   description = "Enable admin user for Azure Container Registry (true/false)"
# }

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "location of the Azure resource group"
  type        = string
}
variable "acr_name" {
  type        = string
  description = "ACR name in Azure"
}
variable "acr_sku" {
  description = "SKU name of the container registry"
  type        = string
}

variable "kubelet_identity_principal_id" {
  type        = string
  description = "The principal ID of the AKS cluster's kubelet identity."
}

variable "role_definition_name" {
  type        = string
  description = "role name"

}

variable "skip_service_principal_aad_check" {
  type        = bool
  description = "skip service"

}

