resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  kubernetes_version = var.kubernetes_version
  sku_tier           = var.sku_tier
  # depends_on          = [azurerm_kubernetes_cluster.aks]
  

  default_node_pool {
    name            = var.default_node_pool_name
    node_count      = var.default_node_pool_count
    vm_size         = var.default_node_pool_vm_size
    os_disk_size_gb = var.default_node_pool_disk_size
  }

  network_profile {
    network_plugin    = var.network_plugin
    load_balancer_sku = var.load_balancer_sku
    network_policy    = var.network_policy
    dns_service_ip    = var.dns_service_ip
    service_cidr      = var.service_cidr
  }

  identity {
    type = "SystemAssigned"
  }

}

# Additional Node Pools
resource "azurerm_kubernetes_cluster_node_pool" "aks_node_pools" {
  for_each = var.additional_node_pools

  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  name                  = each.key
  vm_size               = each.value.vm_size
  node_count            = each.value.node_count
  os_disk_size_gb       = var.default_node_pool_disk_size
  mode                  = "User"
  node_taints           = []
  orchestrator_version  = var.kubernetes_version
}


# # Grant the AKS cluster permission to pull images from ACR
# resource "null_resource" "attach_acr" {
#   provisioner "local-exec" {
#     command = "az aks update -n sparrow-dev -g rg-sparrow-dev --attach-acr sparrow_dev"
#   }

#   depends_on = [ azurerm_kubernetes_cluster.aks,
#   azurerm_kubernetes_cluster_node_pool.aks_node_pools
#    ]
# }


