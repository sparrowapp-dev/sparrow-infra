#Enter Cluster details
cluster_name                = "sparrow-IAC"
resource_group_name         = "rg-sparrow-dev"
location                    = "centralindia"
dns_prefix                  = "sparrow-dev-dns"
kubernetes_version          = "1.28.12"
default_node_pool_name      = "default"
default_node_pool_count     = 3
default_node_pool_vm_size   = "Standard_D2as_v4"
default_node_pool_disk_size = 64
sku_tier                    = "Standard"


# Enter Node details
additional_node_pools = {
  nodepool1 = {
    vm_size    = "Standard_D2as_v4"
    node_count = 2
  }
  nodepool2 = {
    vm_size    = "Standard_D2as_v4"
    node_count = 2
  }
}

#Enter network details
network_plugin    = "azure"
load_balancer_sku = "standard"
network_policy    = "calico"
dns_service_ip    = "10.0.0.10"
service_cidr      = "10.0.0.0/16"

# Namespace Name
namespace_name = "sparrow-dev"
name           = "nginx"

#nginx details
chart      = "ingress-nginx"
repository = "https://kubernetes.github.io/ingress-nginx"

#Mongo-db Details
mongodb_name       = "mongodb"
mongodb_repository = "https://charts.bitnami.com/bitnami"
mongodb_chart      = "mongodb"
mongodb_namespace  = "sparrow-dev"

#Kafka details
kafka_name       = "kafka"
kafka_repository = "https://charts.bitnami.com/bitnami"
kafka_chart      = "kafka"
kafka_namespace  = "sparrow-dev"


# ACR details
acr_name                         = "sparrowdev"
acr_sku                          = "Basic"
role_definition_name             = "AcrPull"
skip_service_principal_aad_check = true

# Log_Analytics details
log_analytics_workspace_name = "sparrow-log"
log_analytics_sku            = "PerGB2018"
retention_days               = "30"

# App_Insight details
app_insights_name = "sparrow-appinsights"
application_type  = "web"


# Storage_account Details
storage_name                      = "iacsparrowstorage"
account_kind                      = "BlobStorage"
account_tier                      = "Standard"
account_replication_type          = "RAGRS"
enable_https_traffic_only         = "true"
min_tls_version                   = "TLS1_2"
access_tier                       = "Cool"
environment                       = "staging"
infrastructure_encryption_enabled = "false"
cross_tenant_replication_enabled  = "false"
