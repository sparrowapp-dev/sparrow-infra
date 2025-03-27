variable "cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  description = "Location of the AKS cluster"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster"
}

variable "kubernetes_version" {
  type        = string
  description = "Version of Kubernetes"
}

variable "default_node_pool_name" {
  type        = string
  description = "Name of the default node pool"
}

variable "default_node_pool_count" {
  type        = number
  description = "Number of nodes in the default node pool"
}

variable "default_node_pool_vm_size" {
  type        = string
  description = "VM size of the default node pool"
}

variable "default_node_pool_disk_size" {
  type        = number
  description = "Disk size in GB for the default node pool"
}

variable "additional_node_pools" {
  type = map(object({
    vm_size    = string
    node_count = number
  }))
  description = "Additional node pools with their sizes and node counts"
}

variable "network_plugin" {
  type        = string
  description = "Network plugin (azure or kubenet)"
}

variable "load_balancer_sku" {
  type        = string
  description = "SKU of the load balancer"
}

variable "network_policy" {
  type        = string
  description = "Network policy (calico or azure)"
}

variable "dns_service_ip" {
  type        = string
  description = "DNS service IP address"
}

variable "service_cidr" {
  type        = string
  description = "CIDR block for services"
}

variable "sku_tier" {
  type        = string
  description = "Plan of AKS cluster"
}

variable "namespace_name" {
  description = "The name of the Kubernetes namespace to create"
  type        = string

}
# variable "acr_name" {
#   type        = string
#   description = "ACR name in Azure"
# }
# variable "acr_sku" {
#   type        = string
#   description = "The SKU of the Azure Container Registry"
# }
# variable "admin_enabled" {
#   type        = bool
#   description = "Enable admin user for Azure Container Registry (true/false)"
# }
variable "name" {
  type = string
}
variable "chart" {
  type = string
}
variable "repository" {
  type = string
}


variable "acr_name" {
  type        = string
  description = "ACR name in Azure"
}
variable "acr_sku" {
  description = "SKU name of the container registry"
  type        = string
}

variable "role_definition_name" {
  type        = string
  description = "role name"

}

variable "skip_service_principal_aad_check" {
  type        = bool
  description = "skip service"

}


variable "mongodb_name" {
  type        = string
  description = "name of mongo db namespace"

}

variable "mongodb_repository" {
  type        = string
  description = "url of repository"

}

variable "mongodb_chart" {
  type        = string
  description = "name of helm chart"

}

variable "mongodb_namespace" {
  type        = string
  description = "name of mongodb namespace"

}

# variable "mongodb_create_namespace" {
#   type        = bool
#   description = "create mongodb namespace"

# }

variable "kafka_name" {
  type        = string
  description = "name of kafka namespace"

}

variable "kafka_repository" {
  type        = string
  description = "url of repository"

}

variable "kafka_chart" {
  type        = string
  description = "name of helm chart"

}

variable "kafka_namespace" {
  type        = string
  description = "name of kafka namespace"

}

variable "log_analytics_workspace_name" {
  description = "Specifies the name of the log analytics."
  type        = string
}

variable "log_analytics_sku" {
  description = "sku details"
  type        = string
}

variable "retention_days" {
  description = "Specifies the retention period in days."
  type        = number
}


variable "app_insights_name" {
  description = "Specifies the name of the Application Insights component."
  type        = string
}

variable "application_type" {
  description = " Specifies the type of Application Insights to create."
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