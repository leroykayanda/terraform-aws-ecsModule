This module is used to set up an AWS ECS fargate cluster. It sets up an ECS cluster with 1 service. To set up an ECS service within an existing cluster, use [this module](https://registry.terraform.io/modules/leroykayanda/ecsService/aws/latest) instead.

    module "ecsModule" {
    source  = "leroykayanda/ecsModule/aws"
    version = "1.0.2"
    env = var.env
    region  = var.region
    cluster_name  = "${var.env}-${var.cluster_name}"
    service_name  = "${var.env}-${var.product_name}"
    task_execution_role = aws_iam_role.ExecutionRole.arn
    launch_type = var.ecs_launch_type
    fargate_cpu = var.fargate_cpu
    fargate_mem = var.fargate_mem
    container_name  = var.container_name
    container_image = var.container_image
    task_environment_variables  = var.task_environment_variables
    task_secret_environment_variables = var.task_secret_environment_variables
    desired_count = var.desired_count
    task_subnets  = var.task_subnets
    container_port  = var.container_port
    vpc_cidr  = var.vpc_cidr
    vpc_id  = var.vpc_id
    alb_access_log_bucket = aws_s3_bucket.alb_access_logs.bucket
    alb_public_subnets  = var.alb_public_subnets
    deregistration_delay  = var.deregistration_delay
    min_capacity  = var.min_capacity
    max_capacity  = var.max_capacity
    certificate_arn = var.certificate_arn
    zone_id = var.zone_id
    domain_name = var.domain_name
    internal  = var.internal
    waf = var.waf
    health_check_path = var.health_check_path
    sns_topic = var.sns_topic
    }
