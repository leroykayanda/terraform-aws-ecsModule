output "cloudwatch_loggroup" {
  value = aws_cloudwatch_log_group.CloudWatchLogGroup.name
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.ecs_cluster.name
}

output "alb_dns_name" {
  value = module.alb.lb_dns_name
}

