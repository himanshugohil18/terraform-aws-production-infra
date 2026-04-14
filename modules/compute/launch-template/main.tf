resource "aws_launch_template" "this" {
  name_prefix   = "app-lt"
  image_id      = var.ami
  instance_type = var.instance_type

  key_name = var.key_name

  vpc_security_group_ids = [var.sg_id]

  user_data = base64encode(file("${path.module}/user_data.sh"))

  iam_instance_profile {
    name = var.instance_profile
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "asg-instance"
    }
  }
}