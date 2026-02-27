resource "random_password" "db_password" {
  length  = 16
  special = false
}


resource "aws_secretsmanager_secret" "db_password" {
  name = "${var.cluster_name}-db-password-${formatdate("YYYYMMDDhhmmss", timestamp())}"
  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "db_password" {
  secret_id     = aws_secretsmanager_secret.db_password.id
  secret_string = random_password.db_password.result
}