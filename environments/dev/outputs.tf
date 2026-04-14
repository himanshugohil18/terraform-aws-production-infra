output "alb_dns" {
  value = module.alb.dns_name
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "asg_name" {
  value = module.autoscaling.asg_name
}