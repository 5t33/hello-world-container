# Heavily borrowed from https://github.com/cn-terraform/terraform-aws-ecs-fargate-service/blob/master/variables.tf
variable "environment" {
  type = string
}

#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "name_preffix" {
  description = "Name preffix for resources on AWS"
  type = string
}

variable "name_override" {
  description = "Overrides name generaged from name_preffix, region, and environment"
  default = ""
}

variable "ecs_cluster_name" {
  description = "ECS cluster name"
  type = string
}

#------------------------------------------------------------------------------
# IAM
#------------------------------------------------------------------------------

variable "ecs_service_role_name" {
  description = "iam role for the ecs service."
  default = "AWSServiceRoleForECS"
}

#------------------------------------------------------------------------------
# AWS Networking
#------------------------------------------------------------------------------
variable "vpc_id" {
  description = "ID of the VPC"
  type = string
}

variable "desired_count" {
  description = "(Optional) The number of instances of the task definition to place and keep running. Defaults to 0."
  type        = number
  default     = 1
}

#------------------------------------------------------------------------------
# AWS LOAD BALANCER
#------------------------------------------------------------------------------

variable "lb_name" {
  description = "Name of lb to use"
  type = string
}

variable "tg_health_check_path" {
  description = "Target group health check path"
  type = string
}

variable "tg_port" {
  description = "Port that ECS will recieve traffic on from the LB listener"
  type        = string
  default = 80
}

variable "tg_protocol" {
  description = "Protocol that ECS will recieve traffic via the LB"
  type        = string
  default = "HTTP"
}

variable "tg_health_check_timeout" {
  description = "Target group health check timeout (must be less than interval)"
  type = number
  default = 2
}

variable "tg_health_check_interval" {
  description = "Target group health check interval"
  type = number
  default = 5
}

variable "tg_health_check_unhealthy_threshold" {
  description = "Unhealthy threshold for target group health check"
  type = number
  default = 2
}

variable "tg_health_check_healthy_threshold" {
  description = "Healthy threshold for target group health check"
  type = number
  default = 10
}

variable "tg_health_check_matcher" {
  description = "Status code for target group health check"
  type = string
  default = 200
}

variable "listener_port" {
  description = "Port for LB listener"
  type = number
  default = 80
}

variable "listener_protocol" {
  description = "Protocol for LB listener"
  type = string
  default = "HTTP"
}

variable "listener_priority" {
  description = "priority of endpiont listener"
  type = number
  default = 1
}

variable "path_patterns" {
  description = "Pattern for your service endpoint"
  type = list(string)
}

#------------------------------------------------------------------------------
# TASK DEFINITION
#------------------------------------------------------------------------------

variable "task_definition_family" {
  description = "The task definition family (the part before the number)"
  type = string
}

variable "container_name" {
  description = "name of container that will be running inside the task"
  type = string
}

variable "container_port" {
  description = "Container port."
  type = number
  default = 3001
}

variable "host_port" {
  description = "Host port."
  type = number
  default = 3001
}

variable "task_cpu" {
  description = "CPU units to be used per task"
  type = number
  default = 128
}

variable "task_memory" {
  description = "memory units to be used per task"
  type = number
  default = 128
}

variable "log_group" {
  description = "Log group for ecs service, defaults to generated service name"
  type = string
  default = null
}

variable "aws_logs_stream_prefix" {
  description = "Prefix for log stream"
  type = string
  default = "ecs"
}

variable "image_repo" {
  description = "ecr repo name of container image (must use alternate tag for latest image)"
  type = string
}


variable "scale_up_step" {
  type        = number
  description = "The number of members by which to scale down, when the adjustment bounds are breached. A positive value scales up. A negative value scales down."
}

variable "scale_down_step" {
  type        = number
  description = "The number of members by which to scale down, when the adjustment bounds are breached. A positive value scales up. A negative value scales down."
}

variable "service_max_task_count" {
  type        = number
  description = "The maximum value to scale to in response to a scale-out event. MaxCapacity is required to register a scalable target."
}

variable "service_min_task_count" {
  type        = number
  description = "The minimum value to scale to in response to a scale-in event. MinCapacity is required to register a scalable target."
}

variable "tags" {
  description = "tags"
  default     = {}
}
