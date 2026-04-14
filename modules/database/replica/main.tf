resource "aws_db_instance" "replica" {
  replicate_source_db = var.source_db
  instance_class      = "db.t3.micro"
}