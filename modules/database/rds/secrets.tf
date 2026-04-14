resource "aws_secretsmanager_secret" "db_secret" {
  name = "rds-secret"
}

resource "aws_secretsmanager_secret_version" "db_secret_value" {
  secret_id = aws_secretsmanager_secret.db_secret.id

  secret_string = jsonencode({
    username = var.db_user
    password = var.db_password
  })
}