data "aws_iam_account_alias" "current" {}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_region" "current" {}