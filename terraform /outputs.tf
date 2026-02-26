output "cluster_name" {
  description = "EKS Cluster Name"
  value       = module.eks.cluster_name
}

output "kubectl_config" {
  description = "Command to configure kubectl"
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${module.eks.cluster_name}"
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "database_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.mysql.endpoint
  sensitive   = true
}

output "database_password_secret_arn" {
  description = "ARN of Secret containing DB Password"
  value       = aws_secretsmanager_secret.db_password.arn
}

output "alb_dns_name" {
  description = "ALB DNS Name"
  value       = aws_lb.main.dns_name
}

output "waf_arn" {
  description = "WAF ARN"
  value       = aws_wafv2_web_acl.main.arn
}

output "app_url" {
  description = "Application URL (via ALB)"
  value       = "http://${aws_lb.main.dns_name}"
}