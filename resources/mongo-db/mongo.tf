resource "helm_release" "mongodb" {
  provider = helm

  name       = var.mongodb_name       #"mongodb"
  repository = var.mongodb_repository #"https://charts.bitnami.com/bitnami"
  chart      = var.mongodb_chart      #"mongodb"
  namespace        = var.mongodb_namespace
#   create_namespace = var.mongodb_create_namespace #true

  values = [
    file("../resources/mongo-db/mongodb-values.yaml")
  ]
}