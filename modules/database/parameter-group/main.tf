resource "aws_db_parameter_group" "this" {
  name   = "app-param-group"
  family = "mysql8.0"

  parameter {
    name  = "max_connections"
    value = "100"
  }
}