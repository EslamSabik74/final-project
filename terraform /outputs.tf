output "cluster_name" {
  value = module.eks.cluster_name
}

output "kubectl_config" {
  value = "aws eks update-kubeconfig --region ${var.aws_region} --name ${module.eks.cluster_name}"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "database_endpoint" {
  value     = aws_db_instance.mysql.endpoint
  sensitive = true
}

output "database_password_secret_arn" {
  value = aws_secretsmanager_secret.db_password.arn
}

output "alb_dns_name" {
  value = aws_lb.main.dns_name
}

output "app_url" {
  value = "http://${aws_lb.main.dns_name}"
}