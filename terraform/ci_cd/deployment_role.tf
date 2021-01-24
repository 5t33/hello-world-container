

# resource "aws_iam_role" "deploymment_role" {
#   for_each           = var.environments
#   name               = "${var.project_name}-deploy-${each.value}"
#   # This doesn't necessarily need to be a template file this
#   # leaves the option open.
#   assume_role_policy = jsonencode(
#     {
#       Statement = [
#           {
#               Action    = "sts:AssumeRole"
#               Effect    = "Allow"
#               Principal = {
#                   AWS = 
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

# resource "aws_iam_policy" "deployment_role_policy" {
#   for_each = var.environments
#   description = "Policy used to deploy hello world service to environment ${each.value}"
#   path        = "/service-role/codepipeline/"
#   policy = jsonencode({
#       Statement = [
#         {
#           Action
#         }
#       ],
#       "Version": "2012-10-17",
#   })
# }