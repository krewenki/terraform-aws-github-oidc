module "iam_github_oidc_provider" {
  source = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-provider"

  tags = var.tags
}

module "iam_github_oidc_role" {
  source = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-role"

  name                 = var.role_name
  max_session_duration = var.max_session_duration

  subjects = var.subjects
  policies = var.policies

  tags = var.tags
}
