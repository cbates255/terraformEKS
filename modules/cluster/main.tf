resource "aws_eks_cluster" "project22cluster" {
  name     = var.cluster_name
  role_arn = var.role_arn

  vpc_config {
    subnet_ids              = var.aws_public_subnet
    endpoint_public_access  = true
    endpoint_private_access = false
    public_access_cidrs     = var.public_access_cidrs
    security_group_ids      = [var.nodeSGid]
  }

  depends_on = [
    var.clusterpolicy,
    var.controller,
  ]
}

resource "aws_eks_node_group" "project22NG" {
  cluster_name    = aws_eks_cluster.project22cluster.name
  node_group_name = var.node_group_name
  node_role_arn   = var.rolearn2
  subnet_ids      = var.aws_public_subnet
  instance_types  = var.instance_types

  remote_access {
    source_security_group_ids = [var.nodegroupID]
    ec2_ssh_key               = var.key_pair
  }

  scaling_config {
    desired_size = var.scaling_desired_size
    max_size     = var.scaling_max_size
    min_size     = var.scaling_min_size
  }

  depends_on = [
    var.nodepolicy,
    var.cnipolicy,
    var.registry,
  ]
}