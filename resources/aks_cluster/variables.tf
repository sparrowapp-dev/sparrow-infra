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

# variable "host" {
#   description = "value"
#   type = string
# }

# variable "client_certificate" {
#     type = string
     
# }
# variable "client_key" {
#     type = string
  
# }
# variable "cluster_ca_certificate" {
#     type = string
  
# }
# variable "name" {
#     type = string
# }
# variable "chart" {
#   type = string
# }
# variable "repository" {
#   type = string
# }