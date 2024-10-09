output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}

output "aks" {
  value = module.aks.aks
}
output "kubelet_identity_principal_id" {
  value = module.aks.kubelet_identity_principal_id
}
output "get_credentials" {
  value = "az aks get-credentials --name ${var.cluster_name} --resource-group ${var.resource_group_name} --admin -f -"
}