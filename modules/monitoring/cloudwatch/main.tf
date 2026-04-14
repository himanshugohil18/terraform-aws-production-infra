resource "aws_cloudwatch_log_group" "this" {
  name = "/aws/ec2/app"

  retention_in_days = 7
}