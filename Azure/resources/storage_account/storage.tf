resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_kind             = var.account_kind
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  #enable_https_traffic_only = var.enable_https_traffic_only #true            # Forces HTTPS traffic
  min_tls_version = var.min_tls_version #"TLS1_2"        # Minimum TLS version supported
  access_tier     = var.access_tier     #"Hot"           # Access tier (Hot or Cool) for Blob storage
  #large_file_share_enabled  = var.large_file_share_enabled  #true            # Enable large file share (requires specific tier)
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  cross_tenant_replication_enabled  = var.cross_tenant_replication_enabled
  tags = {
    environment = var.environment
  }
  
 }