module "logs" {
  # source = "../terraform-aws-cloudwatch-logs"
  source = "github.com/benniemosher-dev/terraform-aws-cloudwatch-logs?ref=v0.2.0"

  config = {
    kms-key = var.config.kms-key-arn
    name    = var.config.cluster-name
  }
}
