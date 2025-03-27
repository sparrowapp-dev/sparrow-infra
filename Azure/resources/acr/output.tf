output "acr_id" {
  value       = azurerm_container_registry.acr.id
  description = "The ID of the Azure Container Registry."
}

output "acr_name" {
  value = azurerm_container_registry.acr.name

}

# Output for ACR Pull Role Assignment
output "acr_pull_role_name" {
  value       = azurerm_role_assignment.acr_pull_role.name
  description = "The name of the role assignment for ACR pull."
}

output "acr_pull_role_id" {
  value       = azurerm_role_assignment.acr_pull_role.id
  description = "The ID of the role assignment for ACR pull."
}