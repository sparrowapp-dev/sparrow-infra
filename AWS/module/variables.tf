# eks-variables.tf

variable "ebs_csi_addon_version" {
  description = "Version of the EBS CSI addon"
  type        = string
}

variable "ebs_csi_sa_subjects" {
  description = "List of subjects for the EBS CSI service account"
  type        = list(string)
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_cluster_version" {
  description = "Version of the EKS cluster"
  type        = string
}

variable "eks_node_group1_desired_size" {
  description = "Desired size for EKS node group 1"
  type        = number
}

variable "eks_node_group1_instance_type" {
  description = "Instance type for EKS node group 1"
  type        = list(string)
}

variable "eks_node_group1_max_size" {
  description = "Max size for EKS node group 1"
  type        = number
}

variable "eks_node_group1_min_size" {
  description = "Min size for EKS node group 1"
  type        = number
}

# variable "eks_node_group2_desired_size" {
#   description = "Desired size for EKS node group 2"
#   type        = number
# }

# variable "eks_node_group2_instance_type" {
#   description = "Instance type for EKS node group 2"
#   type        = list(string)
# }

# variable "eks_node_group2_max_size" {
#   description = "Max size for EKS node group 2"
#   type        = number
# }

# variable "eks_node_group2_min_size" {
#   description = "Min size for EKS node group 2"
#   type        = number
# }

variable "eks_node_group_ami_type" {
  description = "AMI type for EKS node groups"
  type        = string
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames for the VPC"
  type        = bool
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway for private subnets"
  type        = bool
}

variable "irsa_role_name" {
  description = "Name of the IRSA role"
  type        = string
}

variable "private_subnets" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "single_nat_gateway" {
  description = "Use a single NAT gateway for all private subnets"
  type        = bool
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

# variable "eks_cluster_name_2" {
#   description = "EKS cluster name for the second cluster"
#   type        = string
#   default     = "infovision-eks-2"
# }

# variable "eks_cluster_version_2" {
#   description = "EKS cluster version for the second cluster"
#   type        = string
#   default     = "1.27"
# }

# variable "eks_node_group1_desired_size_2" {
#   description = "Desired size of node group 1 for the second cluster"
#   type        = number
#   default     = 2
# }

# variable "eks_node_group1_instance_type_2" {
#   description = "Instance type for node group 1 in the second cluster"
#   type        = list(string)
#   default     = ["t3.small"]
# }

# variable "eks_node_group1_max_size_2" {
#   description = "Maximum size of node group 1 for the second cluster"
#   type        = number
#   default     = 3
# }

# variable "eks_node_group1_min_size_2" {
#   description = "Minimum size of node group 1 for the second cluster"
#   type        = number
#   default     = 1
# }

# variable "eks_node_group2_desired_size_2" {
#   description = "Desired size of node group 2 for the second cluster"
#   type        = number
#   default     = 2
# }

# variable "eks_node_group2_instance_type_2" {
#   description = "Instance type for node group 2 in the second cluster"
#   type        = list(string)
#   default     = ["t3.small"]
# }

# variable "eks_node_group2_max_size_2" {
#   description = "Maximum size of node group 2 for the second cluster"
#   type        = number
#   default     = 2
# }

# variable "eks_node_group2_min_size_2" {
#   description = "Minimum size of node group 2 for the second cluster"
#   type        = number
#   default     = 1
# }

# variable "eks_node_group_ami_type_2" {
#   description = "AMI type for the second cluster"
#   type        = string
#   default     = "AL2_x86_64"
# }

# variable "irsa_role_name_2" {
#   description = "IRSA role name for the second cluster"
#   type        = string
#   default     = "AmazonEKSTFEBSCSIRole-2"
# }