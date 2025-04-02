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