output "endpoint" {
  value = aws_eks_cluster.project22cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.project22cluster.certificate_authority[0].data
}
output "cluster_id" {
  value = aws_eks_cluster.project22cluster.id
}
output "cluster_endpoint" {
  value = aws_eks_cluster.project22cluster.endpoint
}
output "cluster_name" {
  value = aws_eks_cluster.project22cluster.name
}
