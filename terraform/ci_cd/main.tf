

module "codepipeline" {
  source = "../../../codepipeline-module"
  pipeline_bucket_name = var.pipeline_bucket_name
  project_name = var.project_name
  github_token = var.github_token
  ecr_principal_account_ids = [local.account_id]
  owner = var.owner
  github_repo = var.github_repo
  stages = [
    {
      name = "build",
      actions = [
        {
          name = "build",
          category = "Build",
          role_arn = null
          run_order = 1
          input_artifacts = []
          output_artifacts = []
          pipeline_action_configuration = {
            ProjectName = "hello-world-pipeline-build"
          },
          codebuild_config = {
            env_vars = [
              {
                type = "PLAINTEXT",
                name = "IMAGE_REPO_NAME",
                value = "hello-world"
              },
              {
                type = "PLAINTEXT",
                name = "AWS_REGION",
                value = "us-east-2"
              },
              {
                type = "PLAINTEXT",
                name = "AWS_ACCOUNT_ID",
                value = local.account_id
              }
            ],
            vpc_id = var.vpc_id
            security_group_ids = var.security_group_ids
            subnet_ids = var.subnet_ids
            additional_policy_arns = []
            additional_policy_documents = []
            spec_file = "buildspec.yml"
            role_arn = null
            assumed_role_arn = null
          },
          codedeploy_config = null
        }
      ]
    }
  ]
}