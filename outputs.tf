output "role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the role"
  value       = module.iam_github_oidc_role.arn
}
