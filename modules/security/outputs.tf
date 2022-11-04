output "role_arn" {
  value = aws_iam_role.example.arn
}

output "nodeSGid" {
  value = aws_security_group.node_group_one.id
}

output "rolearn2" {
  value = aws_iam_role.example2.arn
}

output "nodegroupID" {
  value = aws_security_group.node_group_one.id
}

output "clusterpolicy" {
  value = aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy
}

output "controller" {
  value = aws_iam_role_policy_attachment.example-AmazonEKSVPCResourceController
}

output "nodepolicy" {
  value = aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy
}

output "cnipolicy" {
  value = aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy
}

output "registry" {
  value = aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly
}