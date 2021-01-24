variable "project_name" {
  type = string
}

variable "github_token" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "security_group_ids" {
  type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}

variable "owner" {
  type = string
}

variable "github_repo" {
  type = string
}

variable "pipeline_bucket_name" {
  type = string
}

variable "environments" {
  type = list(string)
  default = ["use2_tst"]
}