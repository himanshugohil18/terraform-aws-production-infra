resource "aws_autoscaling_group" "this" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  target_group_arns = [var.tg_arn]

  vpc_zone_identifier  = var.subnets
  launch_template {
    id      = var.lt_id
    version = "$Latest"
  }

  health_check_type = "EC2"

  tag {
    key                 = "Name"
    value               = "asg-instance"
    propagate_at_launch = true
  }
}