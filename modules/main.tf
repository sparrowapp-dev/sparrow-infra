resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "aks" {
  source = "../resources/aks_cluster"

  cluster_name                = var.cluster_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  dns_prefix                  = var.dns_prefix
  kubernetes_version          = var.kubernetes_version
  default_node_pool_name      = var.default_node_pool_name
  default_node_pool_count     = var.default_node_pool_count
  default_node_pool_vm_size   = var.default_node_pool_vm_size
  default_node_pool_disk_size = var.default_node_pool_disk_size
  additional_node_pools       = var.additional_node_pools
  network_plugin              = var.network_plugin
  load_balancer_sku           = var.load_balancer_sku
  network_policy              = var.network_policy
  dns_service_ip              = var.dns_service_ip
  service_cidr                = var.service_cidr
  sku_tier                    = var.sku_tier

  #Namespace
  namespace_name = var.namespace_name
  depends_on     = [azurerm_resource_group.aks_rg]

}


module "nginx" {
  source     = "../resources/nginx"
  name       = var.name
  chart      = var.chart
  repository = var.repository

  depends_on = [module.aks]
}

#Mongo-DB

module "mongodb" {
  source             = "../resources/mongo-db"
  mongodb_name       = var.mongodb_name
  mongodb_repository = var.mongodb_repository
  mongodb_chart      = var.mongodb_chart
  mongodb_namespace  = var.mongodb_namespace
  # mongodb_create_namespace = var.mongodb_create_namespace
  depends_on = [module.aks]
}

module "kafka" {
  source           = "../resources/kafka"
  kafka_name       = var.kafka_name
  kafka_repository = var.kafka_repository
  kafka_chart      = var.kafka_chart
  kafka_namespace  = var.kafka_namespace
  depends_on       = [module.aks]

}

module "acr" {
  source                           = "../resources/acr"
  location                         = var.location
  skip_service_principal_aad_check = var.skip_service_principal_aad_check
  kubelet_identity_principal_id    = module.aks.kubelet_identity_principal_id
  role_definition_name             = var.role_definition_name
  resource_group_name              = var.resource_group_name
  acr_sku                          = var.acr_sku
  acr_name                         = var.acr_name
  depends_on                       = [azurerm_resource_group.aks_rg]
}

module "log_analytics" {
  source                       = "../resources/log_analytics"
  resource_group_name          = var.resource_group_name
  log_analytics_workspace_name = var.log_analytics_workspace_name
  log_analytics_sku            = var.log_analytics_sku
  location                     = var.location
  retention_days               = var.retention_days
  
}

module "app_insights" {
  source              = "../resources/app_insight"
  app_insights_name   = var.app_insights_name
  resource_group_name = var.resource_group_name
  workspace_id        = module.log_analytics.workspace_id
  application_type    = var.application_type
  location            = var.location
  # depends_on = [ module.log_analytics ]
}

module "storage_account" {
  source                            = "../resources/storage_account"
  resource_group_name               = var.resource_group_name
  location                          = var.location
  storage_name                      = var.storage_name
  account_kind                      = var.account_kind
  account_replication_type          = var.account_replication_type
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  environment                       = var.environment
  account_tier                      = var.account_tier
  cross_tenant_replication_enabled  = var.cross_tenant_replication_enabled
  depends_on = [ module.aks ]
}





