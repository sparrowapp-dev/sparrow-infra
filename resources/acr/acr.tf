# resource "azurerm_container_registry" "acr" {
#   name                = var.acr_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   sku                 = var.acr_sku
#   admin_enabled       = var.admin_enabled
# }

# provider "azurerm" {
#   features {}
# }

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.acr_sku

}

resource "azurerm_role_assignment" "acr_pull_role" {
  principal_id                     = var.kubelet_identity_principal_id
  role_definition_name             = var.role_definition_name
  scope                            = azurerm_container_registry.acr.id
  skip_service_principal_aad_check = var.skip_service_principal_aad_check
}

