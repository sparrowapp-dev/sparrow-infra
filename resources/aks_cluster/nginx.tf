# data "azurerm_kubernetes_cluster" "aks" {
#  name = var.cluster_name
#  resource_group_name = var.resource_group_name
#  depends_on = [ azurerm_kubernetes_cluster.aks ]
# }

# # Create a namespace for NGINX
# resource "kubernetes_namespace" "nginx" {
#   metadata {
#     nginx_name = var.nginx_name
#   }
# }

# Deploy NGINX using the Helm chart
# resource "helm_release" "nginx" {
#   name             = var.name
#   chart            = var.chart
#   create_namespace = true
#   version = "latest"
#   set {
#     name  = "service.type"
#     value = "LoadBalancer"
#   }
#   # depends_on = [module.aks_cluster]
# }