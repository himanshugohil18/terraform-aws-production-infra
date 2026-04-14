locals {
  common_tags = {
    Project     = "terraform-aws-infra"
    Environment = var.environment
  }
}