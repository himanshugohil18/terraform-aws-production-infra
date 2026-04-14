resource "aws_db_subnet_group" "this" {
  name       = "db-subnet-group"
  subnet_ids = var.subnets

  tags = {
    Name = "db-subnet-group"
  }
}