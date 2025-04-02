module "eks" {
  source = "../resources/eks"

  eks_cluster_name     = var.eks_cluster_name
  region = var.region
  eks_cluster_version  = var.eks_cluster_version
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway
  enable_dns_hostnames = var.enable_dns_hostnames

  eks_node_group_ami_type       = var.eks_node_group_ami_type
  eks_node_group1_instance_type = var.eks_node_group1_instance_type
  eks_node_group1_min_size      = var.eks_node_group1_min_size
  eks_node_group1_max_size      = var.eks_node_group1_max_size
  eks_node_group1_desired_size  = var.eks_node_group1_desired_size

  irsa_role_name        = var.irsa_role_name
  ebs_csi_sa_subjects   = var.ebs_csi_sa_subjects
  ebs_csi_addon_version = var.ebs_csi_addon_version
  
}
