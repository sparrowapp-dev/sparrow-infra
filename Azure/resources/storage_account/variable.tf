variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string

}

variable "location" {
  description = "Location for sparrow storage."
  type        = string

}

variable "storage_name" {
  description = "Specifies the name of the storage account."
  type        = string

}

variable "account_kind" {
  type        = string
  description = "Defines the Kind of account."

}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account."
  type        = string

}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. "
  type        = string

}

variable "enable_https_traffic_only" {
  description = "Enforces HTTPS traffic only"
  type        = bool
  default     = true
}

variable "min_tls_version" {
  description = "Specifies the minimum supported TLS version"
  type        = string
  default     = "TLS1_2"
}

variable "access_tier" {
  description = "Access tier for Blob storage (Hot or Cool)"
  type        = string
  default     = "Hot"
}

variable "infrastructure_encryption_enabled" {
  type        = bool
  description = "infrastructure encryption enabled"
}

variable "cross_tenant_replication_enabled" {
  type        = bool
  description = "Should cross Tenant replication be enabled? Defaults to false"

}

variable "environment" {
  description = "Defines the environment to use for this storage account."
  type        = string

}