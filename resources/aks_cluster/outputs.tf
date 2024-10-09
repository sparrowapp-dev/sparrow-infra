output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config
  sensitive = true
}

output "aks" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "kubelet_identity_principal_id" {
  value = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}
