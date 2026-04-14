resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "main-dashboard"

  dashboard_body = jsonencode({
    widgets = []
  })
}