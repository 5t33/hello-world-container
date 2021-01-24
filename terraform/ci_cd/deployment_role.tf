# resource "aws_iam_role" "codepipeline_role" {
#   name               = "${var.project_name}-codepipeline"
#   # This doesn't necessarily need to be a template file this
#   # leaves the option open.
#   assume_role_policy = jsonencode(
#     {
#       Statement = [
#           {
#               Action    = "sts:AssumeRole"
#               Effect    = "Allow"
#               Principal = {
#                   AWS = module.codepipeline
#               }
#           },
#       ]
#       Version   = "2012-10-17"
#     }
#   )
#   tags = var.tags
#   force_detach_policies = false
#   max_session_duration  = 3600
#   path                  = "/service-role/"
# }
