# provider "azurerm" {
#   features {}
# }

# Resource block for NGINX Ingress Controller
resource "helm_release" "nginx_ingress" {
  provider = helm
  name       = var.name
  repository = var.repository
  chart      = var.chart

  # Specify namespace for NGINX Ingress Controller
  namespace = "nginx"

  # Set true to create namespace if it doesn't exist
  create_namespace = true

  # Specify values for NGINX Ingress Controller configuration
  values = [
    file("../resources/nginx/nginx-ingress-values.yaml")
  ]
}

# # Deploy NGINX using the Helm chart
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
