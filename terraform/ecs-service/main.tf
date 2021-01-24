

locals {
    container_image = "${data.aws_caller_identity.ecr.account_id}.dkr.ecr.${var.aws_region}.amazonaws.com/${var.image_repo}:latest"
}

module "hello-world" {
    # source      = "https://github.com/5t33/ecs-service-module?ref=v0.0.1-alf"
    source = "../ecs-service-module"
    environment = var.environment
    aws_region  = var.aws_region
    aws_profile = var.aws_profile
    name_preffix = var.name_preffix
    name_override = var.name_override
    desired_count = var.desired_count
    ecs_cluster_name = var.ecs_cluster_name
    vpc_id = var.vpc_id
    listener_arn = var.listener_arn
    path_patterns = var.path_patterns
    container_name = var.container_name
    container_port = var.container_port
    container_image = local.container_image
    tg_health_check_path = var.tg_health_check_path
    task_definition_family = var.task_definition_family
    tags = var.tags
    listener_priority = var.listener_priority
    service_min_task_count = var.service_min_task_count
    service_max_task_count = var.service_max_task_count
    scale_up_step = var.scale_up_step
    scale_down_step = var.scale_down_step
}
