locals {
  remote_state_bucket = "w3point0.com-terragrunt-terraform-state"
  remote_state_region = "us-east-1"

  # The following variables must match the folder name
  aws_account_name    = "w3point0.com"
  aws_account_id      = "511672334563"
  aws_assume_role_arn = ""
}