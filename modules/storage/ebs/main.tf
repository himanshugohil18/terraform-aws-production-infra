resource "aws_ebs_volume" "this" {
  availability_zone = var.az
  size              = 10
}