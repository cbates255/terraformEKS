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