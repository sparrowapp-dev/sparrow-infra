# eks

ebs_csi_addon_version = "v1.41.0-eksbuild.1"
ebs_csi_sa_subjects = [
  "system:serviceaccount:kube-system:ebs-csi-controller-sa",
  "another:serviceaccount:some-namespace:another-serviceaccount"
]
eks_cluster_name              = "sparrow-eks"
eks_cluster_version           = "1.32"
eks_node_group1_desired_size  = 1
eks_node_group1_instance_type = ["t3.medium"]
eks_node_group1_max_size      = 2
eks_node_group1_min_size      = 1
eks_node_group_ami_type       = "AL2_x86_64"
enable_dns_hostnames          = true
enable_nat_gateway            = true
irsa_role_name                = "AmazonEKSTFEBSCSIRole"
private_subnets               = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets                = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
region                        = "us-west-1"
single_nat_gateway            = true
vpc_cidr                      = "10.0.0.0/16"
vpc_name                      = "sparrow-vpc"


