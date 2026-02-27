module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = var.cluster_name
  cluster_version = "1.31"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_public_access = true
  cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]  
  cluster_endpoint_private_access = true
  enable_cluster_creator_admin_permissions = true

  
  eks_managed_node_groups = {
    main = {
      desired_size = 2
      min_size     = 1
      max_size     = 3
      
      instance_types = ["t3.micro"]
      
      tags = merge(var.tags, {
        Name = "${var.cluster_name}-node"
      })
    }
  }

  tags = var.tags
}