resource "helm_release" "kafka" {
  provider = helm

  name       = var.kafka_name       #"kafka"
  repository = var.kafka_repository #"https://charts.bitnami.com/bitnami"
  chart      = var.kafka_chart      #"kafka"
  namespace        = var.kafka_namespace

  values = [
    file("../resources/kafka/kafka-values.yaml")
  ]
}