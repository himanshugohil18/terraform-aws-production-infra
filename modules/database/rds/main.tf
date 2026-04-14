resource "aws_db_instance" "this" {
  identifier         = "app-db"
  allocated_storage  = 20
  engine             = "mysql"
  engine_version     = "8.0"
  instance_class     = "db.t3.micro"

  db_name            = "appdb"
  username           = var.db_user
  password           = var.db_password

  db_subnet_group_name = var.subnet_group
  vpc_security_group_ids = [var.sg_id]

  skip_final_snapshot = true
  publicly_accessible = false

  tags = {
    Name = "app-db"
  }
}