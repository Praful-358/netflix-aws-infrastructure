output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "eks_cluster_name" {
  value = aws_eks_cluster.main.name
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "rds_endpoint" {
  value = var.create_rds ? aws_db_instance.main[0].address : null
}

output "jenkins_instance_id" {
  value = var.create_jenkins ? aws_instance.jenkins[0].id : null
}
