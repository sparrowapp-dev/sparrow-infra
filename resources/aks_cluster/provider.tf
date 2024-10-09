# provider "azurerm" {
#   features {}
# }
# provider "kubernetes" {
#   host                   = var.host #azurerm_kubernetes_cluster.aks.kube_config.0.host
#   client_certificate     = var.client_certificate #base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate)
#   client_key             = var.client_key        #base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.client_key)
#   cluster_ca_certificate = var.cluster_ca_certificate        #base64decode(azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate)
# }
